//
//  HackerankViewController.swift
//  Swift_Review
//
//  Created by TyMac on 5/28/21.
//

import UIKit

class HackerankViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var arr = [[Int]]()
        
//        arr.append([1, 1, 1, 0, 0, 0])
//        arr.append([0, 1, 0, 0, 0, 0])
//        arr.append([1, 1, 1, 0, 0, 0])
//        arr.append([0, 0, 2, 4, 4, 0])
//        arr.append([0, 0, 0, 2, 0, 0])
//        arr.append([0, 0, 1, 2, 4, 0])
        
      //  let maxSum = solveHackerandArray(inputArr: arr)
        
      //  print(maxSum)
        
      //  let a = readInteger()
        
        
        
        
    // Do any additional setup after loading the view.
    }
    
    func readInteger() -> Int {
        guard let line = readLine() else {
            fatalError("Unexpected end of input")
        }
        guard let i = Int(line) else {
            fatalError("Invalid integer in input")
        }
        return i
    }
    //https://www.hackerrank.com/challenges/2d-array/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays
    
    func solveHackerandArray(inputArr : [[Int]]) -> Int {
        
        var hourglasses = [[Int]]()
        
        for i in 0...5 {
            for j in 0...5 {
//               get 1,1,1
//                     1
//                   1,1,1
                var hourGlass = [Int]()
                
                if i <= (5 - 2), j <= (5 - 2) {
                    hourGlass.append(inputArr[i][j])
                    hourGlass.append(inputArr[i][j+1])
                    hourGlass.append(inputArr[i][j+2])
                    hourGlass.append(inputArr[i+1][j+1])
                    hourGlass.append(inputArr[i+2][j])
                    hourGlass.append(inputArr[i+2][j+1])
                    hourGlass.append(inputArr[i+2][j+2])
                    
                    
                    hourglasses.append(hourGlass)
                    
                    
                }
                
                
                
                
            }
        }
        
       // print(hourglasses)
        
        var sums = [Int]()
        
        for item in hourglasses {
            let sum = item.sum()
            sums.append(sum)
        }
        
        return sums.max() ?? 0
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension Sequence where Element: AdditiveArithmetic {
    func sum() -> Element { reduce(.zero, +) }
}
