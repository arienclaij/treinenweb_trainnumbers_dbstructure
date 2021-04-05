# treinenweb_trainnumbers_dbstructure
In this repo you'll see a SQL-structure to store trainset/carriages numbers

It's not terribly difficult... ;-)


# Table: trains_numbers
This is the most important table: It stores the trainset/carriage numbers. 
- Each number has the possiblity to couple them to a TrainID (e.g. ICMm, VIRM)
- The NumberParentID is used when the number has a parent when it's deprecated (field: IsDeprecated). An example: First we have ICM 4231 on track, with a changement NS had renamed it to 4444, en than to again back to 4321. With the number 4444 you can couple it to the ID of 4321.
- Trainset or Carriage as type is used when the train is a trainset or carriage
- When the train is a carriage, then you can couple hem with TrainsetID to a Trainsetnumber. En example: Carriages 82 001, 20 584, 10 373, 20 10, 29 448, 20 126,10 353,	20 122, and	20 109 are formed as Trainsetnumber 16501. This number is also a number what you must use in this table.
- Subcategory is used for a subcategorie, e.g. ICNG five-parts, eight-parts. 
- Description is for a field thats is used if you have something interesting to say about the carriage. For example, if it is special due to a deviation. 

# Table: trains_columns
This is the table to create the several date colums, and couple this to the TrainID. Example: Dates of delivered, commissioning, transport to new owner, installation of certain technical gadgets or more..... 
- You can make an order in the Sequence field
- You can set this as protected. No idea why I built it in, but it could be handy. ;-)
- You can create a description in a colums to explain more.

# Table: trains_dates
This is the table to store the dates of delivery, commissioning, transport to new owner etc. This is couples with table trains_colums.
This way you no longer have to work unnecessarily in the width of your database, but you can store an infinite number of dates, in a vertical way.
We all just want to have a relational and normalized database, don't we? ;-)

In the coming period I will further refine this structure. 
And I hope anyone struggling with such structures would have a pleasure of releasing into a repository. :-)

Have luck!


