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
		Key entityKey = KeyFactory.createKey(KEY_KIND, keyName);

		Entity entity = new Entity(KEY_KIND, entityKey);

		User firstUser = game.getFirstUser();
		User secondUser = game.getSecondUser();

		entity.setProperty("first", firstUser.getName());
		entity.setProperty("firstchoice", firstUser.getChoice());
		entity.setProperty("second", secondUser.getName());
		entity.setProperty("secondchoice", secondUser.getChoice());

		entity.setProperty("datetime", new Date());
		entity.setProperty("ip", game.getIp());

		datastore.put(entity);
	}

	public List<Entity> fetchAll() {
		Key entityKey = KeyFactory.createKey(KEY_KIND, keyName);
		Query query = new Query(KEY_KIND, entityKey).addSort("datetime",
				Query.SortDirection.DESCENDING);
		List<Entity> games = datastore.prepare(query).asList(
				FetchOptions.Builder.withLimit(50));

		return games;
	}
}
