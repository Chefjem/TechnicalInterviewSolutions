db.collection.find({
    gsm: {$exists: true, $ne: null},
    insertedAt: {$gte: new ISODate("2024-01-01T00:00:00Z")}
})

//burada amaçladığım şey gsm alanı olan ve null olmayan kayıtları döndürmek ve insertedAt alanı 2024 yılının başından itibaren olan kayıtları filtrelemek.