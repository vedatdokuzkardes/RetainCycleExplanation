//
//  ViewController.swift
//  RetainCycleExplanation
//
//  Created by Vedat Dokuzkardeş on 19.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        var course : Course? = Course(name: "iOS", url: URL(string: "www.vedatdokuzkardes.com")!)
        
        var instructor : Instructor? = Instructor(name: "Vedat")
        
        //strong reference, retain cycle
        
        course!.instructor = instructor
        instructor!.course = course
        
        course = nil
        instructor = nil
        */
        
        var course : WeakCourse? = WeakCourse(name: "iOS", url: URL(string: "www.vedatdokuzkardes.com")!)
        
        var instructor : WeakInstructor? = WeakInstructor(name: "Vedat")
        
        //weak reference
        
        course!.instructor = instructor
        instructor!.course = course
        
        course = nil
        instructor = nil
        
        
        //weak self examples

                var weakCourse2: WeakCourse2? = WeakCourse2(name: "iOS Course", url: URL(string: "www.vedatdokuzkardes.com")!)
                var weakInstructor2: WeakInstructor2? = WeakInstructor2(name: "Vedat")

                weakCourse2!.instructor = weakInstructor2
                weakInstructor2!.course = weakCourse2

                //launched course count is now 1 printed
                //weakCourse2!.launch(launchedCourse: LaunchedCourse(title: "iOS"))
                
                //launched course count is now nil printed. now this is not good because weakcourse2 is not deinitialized and we are not going to be able to update launched courses since we are waiting for network to response. so we should use weak self wisely
                weakCourse2!.launch2(launchedCourse: LaunchedCourse(title: "iOS"))

                weakCourse2 = nil
                weakInstructor2 = nil
                
                
                //Weak self right usage examples
                
                var weakCourse3: WeakCourse3? = WeakCourse3(name: "iOS Course", url: URL(string: "www.vedatdokuzkardes.com")!)
                var weakInstructor3: WeakInstructor3? = WeakInstructor3(name: "Vedat")

                weakCourse3!.instructor = weakInstructor3
                weakInstructor3!.course = weakCourse3

                
                weakCourse3!.launch(launchedCourse2: LaunchedCourse2(title: "iOS"))

                weakCourse3 = nil
                weakInstructor3 = nil
        
    
         
        
    }

}

