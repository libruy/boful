import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_boful_layoutsadminHead_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/adminHead.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
expressionOut.print(resource(dir:'css/themes/default',file: 'easyui.css'))
printHtmlPart(2)
expressionOut.print(resource(dir:'css',file: 'style.css'))
printHtmlPart(2)
expressionOut.print(resource(dir:'css',file: 'select.css'))
printHtmlPart(3)
expressionOut.print(resource(dir:'js',file: 'jquery.min.js'))
printHtmlPart(4)
expressionOut.print(resource(dir:'js',file: 'jquery.easyui.min.js'))
printHtmlPart(5)
expressionOut.print(resource(dir:'js',file: 'jquery.cookie.js'))
printHtmlPart(6)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1438043383051L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
