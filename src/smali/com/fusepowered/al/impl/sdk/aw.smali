.class abstract Lcom/fusepowered/al/impl/sdk/aw;
.super Lcom/fusepowered/al/impl/sdk/ay;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fusepowered/al/impl/sdk/ay;-><init>(Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/fusepowered/al/impl/sdk/n;)V
    .locals 8

    new-instance v0, Lcom/fusepowered/al/impl/sdk/ax;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Repeat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/al/impl/sdk/aw;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/al/impl/sdk/az;->h:Lcom/fusepowered/al/impl/sdk/bb;

    iget-object v4, p0, Lcom/fusepowered/al/impl/sdk/aw;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/fusepowered/al/impl/sdk/ax;-><init>(Lcom/fusepowered/al/impl/sdk/aw;Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/bb;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;Lorg/json/JSONObject;Lcom/fusepowered/al/impl/sdk/n;)V

    sget-object v1, Lcom/fusepowered/al/impl/sdk/az;->k:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/br;->a(Lcom/fusepowered/al/impl/sdk/bb;)V

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/br;->run()V

    return-void
.end method
