import org.apache.http.HttpResponse;
import grails.converters.JSON
import org.apache.http.HttpEntity
import org.apache.http.HttpStatus
import org.apache.http.NameValuePair
import org.apache.http.client.CookieStore
import org.apache.http.client.HttpClient
import org.apache.http.client.entity.UrlEncodedFormEntity
import org.apache.http.client.methods.CloseableHttpResponse
import org.apache.http.client.methods.HttpDelete
import org.apache.http.client.methods.HttpGet
import org.apache.http.client.methods.HttpPost
import org.apache.http.client.methods.HttpPut
import org.apache.http.client.protocol.HttpClientContext
import org.apache.http.impl.client.BasicCookieStore
import org.apache.http.impl.client.DefaultHttpClient
import org.apache.http.message.BasicNameValuePair
import org.apache.http.protocol.BasicHttpContext
import org.apache.http.protocol.HTTP
import org.apache.http.protocol.HttpContext
import org.apache.http.util.EntityUtils

class IndexController {

    static String BASE_URL="http://42.62.52.40:8000/";
    static HttpClient httpClient=new DefaultHttpClient();
    static HttpContext context = new BasicHttpContext();
    static CookieStore cookieStore = new BasicCookieStore();


    def login() {}

    def checkLogin() {
        def result = [:];
        HttpPost post = new HttpPost(BASE_URL + "login/");
        try {
            def formparams=[:];
            formparams.put("username",params.username);
            formparams.put("password",params.password);
            org.apache.http.entity.StringEntity stringEntity = new org.apache.http.entity.StringEntity((params as JSON).toString(),"UTF-8");
            stringEntity.setContentType("application/json")
            post.setEntity(stringEntity);
            context.setAttribute(HttpClientContext.COOKIE_STORE, cookieStore);
            CloseableHttpResponse  response = httpClient.execute(post,context);
            int statusCode = response.getStatusLine().getStatusCode();
            println EntityUtils.toString(response.getEntity())
            if (statusCode == 200&&cookieStore) {
                result.success=true;
            }else{
                result.success=false;
                result.msg="连接错误，请稍候再试!";
            }
            response.close()
        } catch (IOException e) {
            e.printStackTrace();
        }
        return render(result as JSON);
    }

    def httpGet(){
        def result=[:];
        /*String param="";
        for (def obj in params){
            if(obj.key!="url"&&obj.key!="action"&&obj.key!="format"&&obj.key!="controller") {
                param += "&" + obj.key + "=" + URLEncoder.encode(obj.value, "UTF-8");
            }
        }*/

        HttpGet request= new HttpGet(BASE_URL + params.url);
        CloseableHttpResponse response = httpClient.execute(request,context);

        if (response.getStatusLine().getStatusCode() ==HttpStatus.SC_OK) {
            result.success=true;
            result.data= EntityUtils.toString(response.getEntity());
        } else {
            result.success=false;
            result.msg="请求失败，请稍候再试!";
        }
        response.close();
        return render(result as JSON);
    }

    def httpPost(){
        def result = [:];
        HttpPost post = new HttpPost(BASE_URL + params.url);
        try {
            def formparams=[:];
            for (def obj in params){
                if(obj.key!="url"&&obj.key!="action"&&obj.key!="format"&&obj.key!="controller") {
                    if(obj.key.equals("_ids")){
                        if(obj.value){
                            def idList=obj.value.toString().split(",");
                            def ids=[];
                            for (def i=0;i<idList.length;i++){
                                ids.add(idList[i]);
                            }
                            formparams.put(obj.key, ids);
                        }
                    }else {
                        formparams.put(obj.key, obj.value);
                    }
                }
            }
            org.apache.http.entity.StringEntity stringEntity = new org.apache.http.entity.StringEntity((formparams as JSON).toString(),"UTF-8");
            stringEntity.setContentType("application/json")
            post.setEntity(stringEntity);
            context.setAttribute(HttpClientContext.COOKIE_STORE, cookieStore);
            CloseableHttpResponse  response = httpClient.execute(post,context);
            int statusCode = response.getStatusLine().getStatusCode();
            println EntityUtils.toString(response.getEntity())
            if (statusCode == 200&&cookieStore) {
                result.success=true;
            }else{
                result.success=false;
                result.msg="连接错误，请稍候再试!";
            }
            response.close()
        } catch (IOException e) {
            e.printStackTrace();
        }
        return render(result as JSON);
    }

    def httpPut(){
        def result = [:];
        HttpPut httpPut = new HttpPut(BASE_URL + params.url);
        try {
            def formparams = [:];
            for (def obj in params){
                if(obj.key!="url"&&obj.key!="action"&&obj.key!="format"&&obj.key!="controller") {
                    if(obj.key.equals("_ids")){
                        if(obj.value){
                            def idList=obj.value.toString().split(",");
                            def ids=[];
                            for (def i=0;i<idList.length;i++){
                                ids.add(idList[i]);
                            }
                            formparams.put(obj.key, ids);
                        }
                    }else {
                        formparams.put(obj.key, obj.value);
                    }
                }
            }
            org.apache.http.entity.StringEntity stringEntity = new org.apache.http.entity.StringEntity((formparams as JSON).toString(),"UTF-8");
            stringEntity.setContentType("application/json")
            httpPut.setEntity(stringEntity);
            context.setAttribute(HttpClientContext.COOKIE_STORE, cookieStore);
            CloseableHttpResponse  response = httpClient.execute(httpPut,context);
            int statusCode = response.getStatusLine().getStatusCode();
            println EntityUtils.toString(response.getEntity())
            if (statusCode == 200&&cookieStore) {
                result.success=true;
            }else{
                result.success=false;
                result.msg="连接错误，请稍候再试!";
            }
            response.close()
        } catch (IOException e) {
            e.printStackTrace();
        }
        return render(result as JSON);
    }

    def httpDelete(){
        def result=[:];
        HttpDelete httpDelete= new HttpDelete(BASE_URL + params.url);
        CloseableHttpResponse response = httpClient.execute(httpDelete,context);
        if (response.getStatusLine().getStatusCode() ==HttpStatus.SC_OK) {
            result.success=true;
            result.data= EntityUtils.toString(response.getEntity());
        } else {
            result.success=false;
            result.msg="请求失败，请稍候再试!";
        }
        response.close();
        return render(result as JSON);
    }

    def addRole() {
        def result = [:];
        HttpPost post = new HttpPost(BASE_URL + params.url);
        try {
            def formparams = [:];
            String permissionIds=params.permission_ids;
            if(permissionIds){
                def idList=permissionIds.split(",");
                def ids=[];
                for (def i=0;i<idList.length;i++){
                    ids.add(idList[i]);
                }
                formparams.put("permission_ids", ids);
            }
            formparams.put("name", params.name);
            org.apache.http.entity.StringEntity stringEntity = new org.apache.http.entity.StringEntity((formparams as JSON).toString(), "UTF-8");
            stringEntity.setContentType("application/json")
            post.setEntity(stringEntity);
            context.setAttribute(HttpClientContext.COOKIE_STORE, cookieStore);
            CloseableHttpResponse response = httpClient.execute(post, context);
            int statusCode = response.getStatusLine().getStatusCode();
            println EntityUtils.toString(response.getEntity())
            if (statusCode == 200 && cookieStore) {
                result.success = true;
            } else {
                result.success = false;
                result.msg = "连接错误，请稍候再试!";
            }
            response.close()
        } catch (IOException e) {
            e.printStackTrace();
        }
        return render(result as JSON);
    }

    def modifyRole(){
        def result = [:];
        HttpPut httpPut = new HttpPut(BASE_URL + params.url);
        try {
            def formparams = [:];
            String permissionIds=params.permission_ids;
            if(permissionIds){
                def idList=permissionIds.split(",");
                def ids=[];
                for (def i=0;i<idList.length;i++){
                    ids.add(idList[i]);
                }
                formparams.put("permission_ids", ids);
            }
            formparams.put("name", params.name);
            org.apache.http.entity.StringEntity stringEntity = new org.apache.http.entity.StringEntity((formparams as JSON).toString(),"UTF-8");
            stringEntity.setContentType("application/json")
            httpPut.setEntity(stringEntity);
            context.setAttribute(HttpClientContext.COOKIE_STORE, cookieStore);
            CloseableHttpResponse  response = httpClient.execute(httpPut,context);
            int statusCode = response.getStatusLine().getStatusCode();
            println EntityUtils.toString(response.getEntity())
            if (statusCode == 200&&cookieStore) {
                result.success=true;
            }else{
                result.success=false;
                result.msg="连接错误，请稍候再试!";
            }
            response.close()
        } catch (IOException e) {
            e.printStackTrace();
        }
        return render(result as JSON);
    }

}
