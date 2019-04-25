//
//  UnitTestLadderGame.swift
//  UnitTestLadderGame
//
//  Created by JieunKim on 24/04/2019.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import XCTest
class UnitTestLadderGame: XCTestCase {

    
    
    func testInputGamePlayerSucess(){
        let testplayer = [LadderPlayer(name: "ogi"),LadderPlayer(name: "kim"),LadderPlayer(name: "judy")]
        let ladderGame = LadderGame.init(players: testplayer, height: 4)

        
         XCTAssertEqual(3, ladderGame.numberOfPlayer,"notequalNumberOfPlayer")
         XCTAssertNotEqual(2, ladderGame.numberOfPlayer,"notequalNumberOfPlayer")
    }
    
    func testLadderFloor() {
        let playerCount = 3
        let stepCount = 3 - 1
        let ladderFloor = LadderFloor.init(numberOfPlayer: playerCount)
        
        XCTAssertEqual(ladderFloor.getSteps().count, stepCount, "notequalFloor")
    }
    
    func testLadderHeight() {
       let testplayer = [LadderPlayer(name: "ogi"),LadderPlayer(name: "kim"),LadderPlayer(name: "judy")]
        
        let ladderGame = LadderGame.init(players: testplayer, height: 3)
        
        XCTAssertEqual(ladderGame.getPlayer().count, 3, "notequalHeight")
    }
    
    func testSteps() {
      
        let floor = LadderFloor.init(numberOfPlayer: 3)
        
        for current in 1..<floor.getSteps().count {
            let previous = current - 1
            let currentHasStep = floor.getSteps()[current].isConnceted
            
            let previousHasStep =
            floor.getSteps()[previous].isConnceted
            
            guard currentHasStep else {
                continue
            }
            
        
        }
    }
    
    func testladderCorrectHeight() {
        
        let testplayer = [LadderPlayer(name: "ogi"),LadderPlayer(name: "kim"),LadderPlayer(name: "judy")]
        
        let ladderGame = LadderGame.init(players: testplayer, height: 7)
        
         XCTAssertEqual(ladderGame.ladder.getLayer().count, 7, "heigth와 사다리의 층수가 다릅니다.")
    }
  
}
