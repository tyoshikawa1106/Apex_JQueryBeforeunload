/**
 * ページ切替警告
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class JQueryBeforeunloadController {
    
    public String input {get; set;}
    
    /**
     * コンストラクタ
     */
    public JQueryBeforeunloadController() {
        System.debug('JQueryBeforeunloadController:START');
        
        this.input = '';
        
        System.debug('JQueryBeforeunloadController:END');
    }
    
    /**
     * ボタンクリック処理
     * @param   : none
     * @return  : 遷移先URL
     */
    public PageReference doClick() {
        System.debug('doClick:START');
        
        if (String.isEmpty(this.input) == true) {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, '値が未入力です。'));
            return null;
        }
        
        System.debug('doClick:END');
        return new PageReference('/home/home.jsp');
    }
}