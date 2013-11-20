package net.okjsp.gmy;

import java.util.Date;
import java.util.List;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Query;

public class GawiDao {
	private static final String KEY_KIND = "Game";
	
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	String keyName = "games";

	public void save(Game game) {
        Key employeeKey = KeyFactory.createKey(KEY_KIND, keyName);
		
		Entity employee = new Entity(KEY_KIND, employeeKey);
		
		User firstUser = game.getFirstUser();
		User secondUser = game.getSecondUser();

		employee.setProperty("first", firstUser.getName());
		employee.setProperty("firstchoice", firstUser.getChoice());
		employee.setProperty("second", secondUser.getName());
		employee.setProperty("secondchoice", secondUser.getChoice());

		employee.setProperty("datetime", new Date());
		employee.setProperty("ip", game.getIp());

		datastore.put(employee);
	}
	
	public List<Entity> fetchAll() {
        Key employeeKey = KeyFactory.createKey(KEY_KIND, keyName);
        Query query = new Query(KEY_KIND, employeeKey).addSort("datetime", Query.SortDirection.DESCENDING);
        List<Entity> greetings = datastore.prepare(query).asList(FetchOptions.Builder.withLimit(5));

		return greetings;
	}
}
