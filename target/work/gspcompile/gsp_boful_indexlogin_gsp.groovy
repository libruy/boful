import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_boful_indexlogin_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/index/login.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',10,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(4)
expressionOut.print(resource(dir: 'css',file: 'style.css'))
printHtmlPart(5)
expressionOut.print(resource(dir: 'js',file: 'jquery.min.js'))
printHtmlPart(6)
expressionOut.print(resource(dir: 'js',file: 'jquery.cookie.js'))
printHtmlPart(7)
expressionOut.print(resource(dir: 'js',file: 'cloud.js'))
printHtmlPart(7)
expressionOut.print(resource(dir: 'js',file: 'login.js'))
printHtmlPart(8)
})
invokeTag('captureHead','sitemesh',22,[:],1)
printHtmlPart(0)
createClosureForHtmlPart(9, 1)
invokeTag('captureBody','sitemesh',57,['style':("background-color:#1c77ac; background-image:url(${resource(dir:'images',file: 'light.png')}); background-repeat:no-repeat; background-position:center top; overflow:hidden;")],1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1437978884402L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
