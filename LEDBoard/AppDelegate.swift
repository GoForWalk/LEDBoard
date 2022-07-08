//
//  AppDelegate.swift
//  LEDBoard
//
//  Created by sae hun chung on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
//    ios13 이전에서는 Appdelegate에 UIWindow? 추가
//    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // 런치스크린이 떠있는 동안 진행되는 코드
        // 다양한 기능을 추가할 수 있다.
        sleep(2)
        
        return true
    }
    
    // 생명주기 관현 함수 1
    func applicationDidEnterBackground(_ application: UIApplication) {
        // 앱이 background에 진입해서 진행하는 로직 작성
        // youtube - 사용자가 프리미엄 결제했으면 play, 아니면 일시 정지
    }
    
    // 생명주기 관현 함수 2
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Active 상태로 돌아오는 경우
        // 앱을 켤때 광고를 팝업하는 경우
        // 앱 켜지기 전 비밀번호를 입력하는 화면을 띄운다.
        // 백그라운드에서 화면이 노출되지 않게 하는 경우
    }

    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *) // 13.0 이후 버전
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *) // 13.0 이후 버전
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

