/**
 * uuid in version 4
 */
function uuidv4() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
        var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
        return v.toString(16);
    }).replaceAll('-', '');
}

/**
 * 复制指定内容到粘贴板
 * @param {String} text 
 */
function copyToClipboard(text) {
    //采用uuid作为id，避免不知道啥情况导致的id重复
    $('body').append('<div><input id="3a4ef5238d61494bab6cb33bfbdbb962" readonly></div>');
    var input = $('#3a4ef5238d61494bab6cb33bfbdbb962');
    input.val(text);
    input.select();
    //注意：execCommand('copy')的前提是选中可编辑区域，且该可编辑区域未被隐藏
    return document.execCommand('copy') | input.parent().remove();
}

/**
 * 生成uuid，并复制到剪贴板
 */
function uuidGenerator(){
    var uuid=uuidv4();
    if(copyToClipboard(uuid)) {
        console.log(uuid);
    }else{
        console.log('copy uuid v4 to clipboard failed');
    }
}