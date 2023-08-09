from django.db import models


class Categoria(models.Model):
    id = models.BigAutoField(primary_key=True)
    categoria = models.CharField(db_column='Categoria', max_length=16)  # Field name made lowercase.

    def __str__(self):
        return self.categoria
    class Meta:
        managed = True
        db_table = 'categoria'


class Subcategoria(models.Model):
    id = models.BigAutoField(primary_key=True)
    subcategoria = models.CharField(db_column='Subcategoria', max_length=16)  # Field name made lowercase.
    categoria = models.ForeignKey(Categoria, models.DO_NOTHING, db_column='Categoria_id')  # Field name made lowercase.

    def __str__(self):
        return self.subcategoria
    class Meta:
        managed = True
        db_table = 'subcategoria'


class Tipo(models.Model):
    id = models.BigAutoField(primary_key=True)
    tipo = models.CharField(db_column='Tipo', max_length=16)  # Field name made lowercase.
    def __str__(self):
        return self.tipo
    class Meta:
        managed = True
        db_table = 'tipo'


class Marca(models.Model):
    id = models.BigAutoField(primary_key=True)
    marca = models.CharField(db_column='Marca', max_length=16)  # Field name made lowercase.
    def __str__(self):
        return self.marca
    class Meta:
        managed = True
        db_table = 'marca'


class Modelo(models.Model):
    id = models.BigAutoField(primary_key=True)
    modelo = models.CharField(db_column='Modelo', max_length=16)  # Field name made lowercase.
    marca = models.ForeignKey(Marca, models.DO_NOTHING, db_column='Marca_id')  # Field name made lowercase.
    def __str__(self):
        return self.modelo
    class Meta:
        managed = True
        db_table = 'modelo'


class Produto(models.Model):
    id = models.AutoField(primary_key=True,db_column='id',editable=False)
    ean = models.CharField(db_column='EAN', max_length=13)  # Field name made lowercase.
    categoria = models.ForeignKey(Categoria, models.DO_NOTHING, db_column='Categoria_id')  # Field name made lowercase.
    subcategoria = models.ForeignKey('Subcategoria', models.DO_NOTHING, db_column='Subcategoria_id')  # Field name made lowercase.
    tipo = models.ForeignKey('Tipo', models.DO_NOTHING, db_column='Tipo_id')  # Field name made lowercase.
    marca = models.ForeignKey(Marca, models.DO_NOTHING, db_column='Marca_id')  # Field name made lowercase.
    modelo = models.ForeignKey(Modelo, models.DO_NOTHING, db_column='Modelo_id')  # Field name made lowercase.
    quantidade = models.IntegerField(db_column='Quantidade')  # Field name made lowercase.
    custo = models.DecimalField(db_column='Custo', max_digits=12, decimal_places=2)  # Field name made lowercase.
    preco = models.DecimalField(db_column='Preco', max_digits=12, decimal_places=2)  # Field name made lowercase.
    def __str__(self):
        return str(self.id)+':  '+str(self.categoria)+' '+str(self.subcategoria)+' '+str(self.tipo)+' '+str(self.marca)+' '+str(self.modelo)

    class Meta:
        managed = True
        db_table = 'produto'


class Etiqueta(models.Model):
    id = models.BigAutoField(primary_key=True)
    quantidade = models.IntegerField(db_column='Quantidade')  # Field name made lowercase.
    produto = models.ForeignKey('Produto', models.DO_NOTHING, db_column='Produto_id')  # Field name made lowercase.
    # def __str__(self):
    #     return str(self.id)+' '+self.
    class Meta:
        managed = True
        db_table = 'etiqueta'


class Movimento(models.Model):
    id = models.BigAutoField(primary_key=True)
    saida = models.IntegerField(db_column='Saida')  # Field name made lowercase.
    obs = models.CharField(db_column='Obs', max_length=40)  # Field name made lowercase.
    wins = models.DateTimeField()

    def __str__(self):
        return str(self.wins)+' '+self.saida+' '+self.obs

    class Meta:
        managed = True
        db_table = 'movimento'


class Item(models.Model):
    id = models.BigAutoField(primary_key=True)
    quantidade = models.IntegerField(db_column='Quantidade')  # Field name made lowercase.
    custo = models.DecimalField(db_column='Custo', max_digits=12, decimal_places=2)  # Field name made lowercase.
    preco = models.DecimalField(db_column='Preco', max_digits=12, decimal_places=2)  # Field name made lowercase.
    movimento = models.ForeignKey('Movimento', models.DO_NOTHING, db_column='Movimento_id')  # Field name made lowercase.
    produto = models.ForeignKey('Produto', models.DO_NOTHING, db_column='Produto_id')  # Field name made lowercase.

    def __str__(self):
        return str(self.id)+' '+str(self.produto)+' '
    class Meta:
        managed = True
        db_table = 'item'


