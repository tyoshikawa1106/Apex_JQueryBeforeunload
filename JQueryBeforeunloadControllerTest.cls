/*
 * ページ切替警告・コントローラーテストクラス
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdDate      : 2013/01/01
 * @createdName      : TAIKI,YOSHIKAWA
 * ----------------------------------------
 * @lastModifiedDate : 2013/01/01
 * @lastModifiedName : TAIKI,YOSHIKAWA
 * ----------------------------------------
 */
@isTest
private class JQueryBeforeunloadControllerTest {

    /*
	 * コンストラクタ・テスト
	 */
    static testMethod void JQueryBeforeunloadControllerTest() {
        System.debug('◆◆◆◆JQueryBeforeunloadControllerTest:START');
        
        // ユーザ
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
            // テスト開始
            Test.startTest();
            
            // コンストラクタ
            JQueryBeforeunloadController cls = new JQueryBeforeunloadController();
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆JQueryBeforeunloadControllerTest:END');
    }
    
    /*
	 * ボタンクリック処理・テスト
	 */
    static testMethod void doClickTest() {
        System.debug('◆◆◆◆doClickTest:START');
        
        // ユーザ
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
            // テスト開始
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
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆doClickTest:END');
    }
    
    /*
     * ユーザ取得
     */
    private static User getUser() {
    	return [select Id from User where Id =: UserInfo.getUserId() limit 1];
    }
    
    /*
     * テストページ取得
     */
    private static PageReference getPageReference() {
    	return new PageReference('TestPage');
    }
}