package json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

	public class JsonUtil {
	
		public static Map getMap4Json(String jsonString)
		{
	        JSONObject jsonObject = JSONObject.fromObject( jsonString );  
	        Iterator  keyIter = jsonObject.keys();
	        String key;
	        Object value;
	
	        Map valueMap = new HashMap();
	
	        while( keyIter.hasNext())
	        {
	            key = (String)keyIter.next();
	
	            value = jsonObject.get(key);
	
	            valueMap.put(key, value);
	        }
	
	        return valueMap;
	
	    }
		 public static Object[] getObjectArray4Json(String jsonString){

		        JSONArray jsonArray = JSONArray.fromObject(jsonString);

		        return jsonArray.toArray();

		        

		 }
		 
		 public static List getList4Json(String jsonString, Class pojoClass){

		        

		        JSONArray jsonArray = JSONArray.fromObject(jsonString);

		        JSONObject jsonObject;

		        Object pojoValue;

		        

		        List list = new ArrayList();

		        for ( int i = 0 ; i<jsonArray.size(); i++){

		            

		            jsonObject = jsonArray.getJSONObject(i);

		            pojoValue = JSONObject.toBean(jsonObject,pojoClass);

		            list.add(pojoValue);

		            

		        }

		        return list;



		    }
}
