import sqlite3

# Connect to the two SQLite databases
ana_db = "AnaInstrument.db"
counterparty_db = "CounterpartyInstrument.db"

# Connect to AnaInstrument.db
ana_conn = sqlite3.connect(ana_db)
ana_cursor = ana_conn.cursor()

# Connect to CounterpartyInstrument.db
counterparty_conn = sqlite3.connect(counterparty_db)
counterparty_cursor = counterparty_conn.cursor()

# Query to fetch all distinct InstrumentID values from AnaInstrument
ana_query = "SELECT DISTINCT InstrumentID FROM AnaInstrument;"
ana_cursor.execute(ana_query)
ana_instrument_ids = set(row[0] for row in ana_cursor.fetchall())

# Query to fetch all distinct InstrumentID values from CounterpartyInstrument
counterparty_query = "SELECT DISTINCT InstrumentID FROM CounterpartyInstrument;"
counterparty_cursor.execute(counterparty_query)
counterparty_instrument_ids = set(row[0] for row in counterparty_cursor.fetchall())

# Find differences between the two sets
missing_in_ana = counterparty_instrument_ids - ana_instrument_ids
missing_in_counterparty = ana_instrument_ids - counterparty_instrument_ids

# Display the results
print(f"InstrumentIDs missing in AnaInstrument.db: {missing_in_ana}")
print(f"InstrumentIDs missing in CounterpartyInstrument.db: {missing_in_counterparty}")

# Close the database connections
ana_conn.close()
counterparty_conn.close()
