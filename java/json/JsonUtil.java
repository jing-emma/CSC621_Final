package json;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

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
	
}
