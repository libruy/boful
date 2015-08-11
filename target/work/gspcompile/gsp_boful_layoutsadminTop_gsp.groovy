import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_boful_layoutsadminTop_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/adminTop.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
expressionOut.print(controllerName=='resource'?'selected':'')
printHtmlPart(3)
expressionOut.print(resource(dir: 'images', file: 'file.png'))
printHtmlPart(4)
expressionOut.print(controllerName=='resource'?'selected':'')
printHtmlPart(3)
expressionOut.print(resource(dir: 'images', file: 'icon01.png'))
printHtmlPart(5)
expressionOut.print(controllerName=='application'?'selected':'')
printHtmlPart(3)
expressionOut.print(resource(dir: 'images', file: 'icon02.png'))
printHtmlPart(6)
expressionOut.print(createLink(controller: 'user', action: 'index'))
printHtmlPart(7)
expressionOut.print(controllerName=='user'?'selected':'')
printHtmlPart(3)
expressionOut.print(resource(dir: 'images', file: 'big_user.png'))
printHtmlPart(8)
expressionOut.print(controllerName=='system'?'selected':'')
printHtmlPart(3)
expressionOut.print(resource(dir: 'images', file: 'icon04.png'))
printHtmlPart(9)
expressionOut.print(controllerName=='statistics'?'selected':'')
printHtmlPart(3)
expressionOut.print(resource(dir: 'images', file: 'icon03.png'))
printHtmlPart(10)
expressionOut.print(createLink(controller: 'index', action: 'login'))
printHtmlPart(11)
})
invokeTag('captureBody','sitemesh',21,['style':("background:url(${resource(dir: 'images',file: 'topbg.gif')}) repeat-x;")],1)
printHtmlPart(1)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1438041757677L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
