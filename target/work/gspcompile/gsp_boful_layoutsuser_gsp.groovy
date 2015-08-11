import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_boful_layoutsuser_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/user.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('layoutTitle','g',10,[:],-1)
printHtmlPart(3)
})
invokeTag('captureTitle','sitemesh',10,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(2)
invokeTag('include','g',11,['view':("layouts/adminHead.gsp")],-1)
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',11,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(5)
invokeTag('include','g',16,['view':("layouts/adminTop.gsp")],-1)
printHtmlPart(6)
expressionOut.print(actionName=='index'?'active':'')
printHtmlPart(7)
expressionOut.print(createLink(controller: 'user', action: 'index'))
printHtmlPart(8)
expressionOut.print(actionName=='group'?'active':'')
printHtmlPart(9)
expressionOut.print(createLink(controller: 'user', action: 'group'))
printHtmlPart(10)
expressionOut.print(actionName=='role'?'active':'')
printHtmlPart(9)
expressionOut.print(createLink(controller: 'user', action: 'role'))
printHtmlPart(11)
expressionOut.print(actionName=='auth'?'active':'')
printHtmlPart(9)
expressionOut.print(createLink(controller: 'user', action: 'auth'))
printHtmlPart(12)
invokeTag('layoutBody','g',40,[:],-1)
printHtmlPart(13)
})
invokeTag('captureBody','sitemesh',42,['class':("easyui-layout")],1)
printHtmlPart(14)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1438043525796L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
