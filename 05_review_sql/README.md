# Intro to SQL

Let's take a gander at the `music.db` inside of `sqlite3` or SQLite Browser

## Challenges

1. Write the SQL to return all of the rows in the artists table?

```SQL
-- Wow what an amazing SQL query
SELECT * FROM artists;
```

2. Write the SQL to select the artist with the name "Black Sabbath"

```SQL
-- WHERE clause
SELECT * FROM artists WHERE name = "Black Sabbath";
SELECT name FROM artists WHERE ArtistId = 12;
SELECT * FROM artists WHERE name LIKE "black sabbath";
```

3. Write the SQL to create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type text

```sql
-- Creates table
CREATE TABLE fans(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);
```

4. Write the SQL to alter the fans table to have a artist_id column type integer?

```sql
ALTER TABLE fans ADD artist_id INTEGER;
```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas?

```sql
INSERT INTO fans (name,artist_id) VALUES ("Prince", 169);
```

6. How would you update your name in the fans table to be your new name?

 ```sql
UPDATE fans SET name = "Prince" WHERE id = 1;
 ```

 BONUS
 6a. How do you delete things from a table called fans;
 ```sql
 -- DELETEs the fan where the id matches 4
 DELETE FROM fans WHERE id = 4;
 ```

7. Write the SQL to return fans that are not fans of the black eyed peas.

```sql
SELECT * FROM fans WHERE artist_id != 169;
SELECT * FROM fans WHERE artist_id IS NOT 169;
```

8. Write the SQL to display an artists name next to their album title

```sql

```

9. Write the SQL to display artist name, album name and number of tracks on that album

```sql

```

10. Write the SQL to return the name of all of the artists in the 'Pop' Genre

```sql

```
