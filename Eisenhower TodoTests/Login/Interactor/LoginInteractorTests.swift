//
//  LoginLoginInteractorTests.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable import Eisenhower_Todo


extension AppUser: Equatable {
    static public func ==(lhs: AppUser, rhs: AppUser) -> Bool {
        if lhs.bio == rhs.bio
            && lhs.email == rhs.email
            && lhs.id == lhs.id
            && lhs.login == rhs.login
            && lhs.profilePictureURL == rhs.profilePictureURL {
            return true
        }
        return false
    }
    
    
}

class LoginInteractorSpec: QuickSpec {
    
    private var interactor  = LoginInteractor()
    private var mockLoginService : MockLoginService!
    private var mockPresenter :MockPresenter!
    
    private func setupModule(){
        mockLoginService = MockLoginService()
        mockPresenter = MockPresenter()
        
        interactor.loginService = mockLoginService
        interactor.output = mockPresenter
        
        mockLoginService.output = interactor
    }
    
      override func spec() {
          describe("LoginBoardInteractor") {
            
            let correctCredential = UserCredential(email: "test@test.com", password: "SuperSecret")
            let incorrectCredential = UserCredential(email: "test@test.com", password: "false")
            
            context("should success in login user With Correct credential") {
                
                beforeEach {
                    self.setupModule()
                }
                
                it("should call loginService auth function") {
                    self.interactor.signInUser(withUserCredential:correctCredential)
                    expect(self.mockLoginService.userAuthCalled).to(beTrue())
                }
                it("should call presenter success auth function") {
                    self.interactor.signInUser(withUserCredential:correctCredential)
                    expect(self.mockPresenter.didConnectedCalled).to(beTrue())
                    expect(self.mockPresenter.didFailSigninCalled).to(beFalse())
                }
                
                it("should signed user to the presenter") {
                    self.interactor.signInUser(withUserCredential:correctCredential)
                    expect(self.mockPresenter.connectedUser).to(equal(self.mockLoginService.fakeUser))
                }
            }
            
            context("should fail in login user with incorrect credential") {
                
                beforeEach {
                    self.setupModule()
                }
                
                it("should call loginService auth function") {
                    self.interactor.signInUser(withUserCredential:correctCredential)
                    expect(self.mockLoginService.userAuthCalled).to(beTrue())
                }
                it("should call presenter fail auth fuctio,") {
                    self.interactor.signInUser(withUserCredential:incorrectCredential)
                    expect(self.mockPresenter.didFailSigninCalled).to(beTrue())
                    expect(self.mockPresenter.didConnectedCalled).to(beFalse())
                }
                
                it("should presenter user be nil") {
                    self.interactor.signInUser(withUserCredential:incorrectCredential)
                    expect(self.mockPresenter.connectedUser).to(beNil())
                }
            }
        }
    }
    
    class MockPresenter: LoginInteractorOutput {
        var connectedUser:AppUser?
        var errorMessage:String?
        
        var didConnectedCalled = false
        var didFailSigninCalled = false
        
        func didConnected(user: AppUser) {
            didConnectedCalled = true
            connectedUser = user
        }
        
        func didFailSignin(withMessage: String) {
            didFailSigninCalled = true
            errorMessage = withMessage
        }
        
    }
    
    class MockLoginService: LoginAuthServiceInput  {
        weak var output : LoginAuthServiceOutput!
        
        var fakeUser: AppUser {
            return AppUser(id: "4", login: "user", bio: "une bio", email: "test@test.com", profilePictureURL: "nopic.com")
        }
        
        var password = "SuperSecret"
        
        var userAuthCalled = false
        
        func userauth(withEmail email: String, andPassword password: String) {
            userAuthCalled = true
            if email == fakeUser.email && password == self.password {
                output.userAuthSuccess(user: fakeUser)
            } else {
                output.userAuthFailure(message: "Wrong password")
            }
        }
    }
}

