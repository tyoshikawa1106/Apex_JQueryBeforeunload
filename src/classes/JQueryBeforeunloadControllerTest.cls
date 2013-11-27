/**
 * ページ切替警告
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class JQueryBeforeunloadControllerTest {

    /**
     * コンストラクタ
     */
    static testMethod void JQueryBeforeunloadControllerTest() {
            
        Test.startTest();
        
        // コンストラクタ
        JQueryBeforeunloadController cls = new JQueryBeforeunloadController();
        
        Test.stopTest();
    }
    
    /**
     * ボタンクリック処理
     */
    static testMethod void doClickTest() {
            
        Test.startTest();
        
        // コンストラクタ
        JQueryBeforeunloadController cls = new JQueryBeforeunloadController();
        // ボタンクリック処理
        cls.doClick();
        System.assertEquals(String.isEmpty(cls.input), true);
        
        // 値を指定
        cls.input = 'OK!!';
        
        // ボタンクリック処理
        cls.doClick();
        System.assertEquals(String.isEmpty(cls.input), false);
        
        Test.stopTest();
    }
}