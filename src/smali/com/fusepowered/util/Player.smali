.class public Lcom/fusepowered/util/Player;
.super Ljava/lang/Object;
.source "Player.java"


# instance fields
.field private accountId:Ljava/lang/String;

.field private alias:Ljava/lang/String;

.field private canAttack:Z

.field private fuseId:Ljava/lang/String;

.field private level:I

.field private pending:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fusepowered/util/Player;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/util/Player;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getCanAttack()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/fusepowered/util/Player;->canAttack:Z

    return v0
.end method

.method public getFuseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/util/Player;->fuseId:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/fusepowered/util/Player;->level:I

    return v0
.end method

.method public getPending()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/fusepowered/util/Player;->pending:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fusepowered/util/Player;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/fusepowered/util/Player;->accountId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fusepowered/util/Player;->alias:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setCanAttack(Z)V
    .locals 0
    .param p1, "canAttack"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/fusepowered/util/Player;->canAttack:Z

    .line 71
    return-void
.end method

.method public setFuseId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fuseId"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fusepowered/util/Player;->fuseId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fusepowered/util/Player;->level:I

    .line 55
    return-void
.end method

.method public setPending(I)V
    .locals 0
    .param p1, "pending"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/fusepowered/util/Player;->pending:I

    .line 63
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fusepowered/util/Player;->type:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    :try_start_0
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "Player"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "fuseId"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/util/Player;->fuseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "accountId"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/util/Player;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "alias"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/util/Player;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/util/Player;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "level"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/util/Player;->level:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "pending"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/util/Player;->pending:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v0, "{ \"Player\" : \"\" }"

    goto :goto_0
.end method
