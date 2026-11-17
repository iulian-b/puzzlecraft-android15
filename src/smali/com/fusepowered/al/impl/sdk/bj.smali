.class Lcom/fusepowered/al/impl/sdk/bj;
.super Lcom/fusepowered/al/impl/sdk/br;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/sdk/bi;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/bi;Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/bb;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/bj;->a:Lcom/fusepowered/al/impl/sdk/bi;

    invoke-direct {p0, p2, p3, p4}, Lcom/fusepowered/al/impl/sdk/br;-><init>(Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/bb;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bj;->a:Lcom/fusepowered/al/impl/sdk/bi;

    invoke-virtual {v0, p1}, Lcom/fusepowered/al/impl/sdk/bi;->a(I)V

    return-void
.end method

.method protected a(Lcom/fusepowered/al/impl/sdk/m;Lcom/fusepowered/al/impl/sdk/n;)V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bj;->a:Lcom/fusepowered/al/impl/sdk/bi;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/bi;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bj;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/fusepowered/al/impl/sdk/az;->u:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v2}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, p2}, Lcom/fusepowered/al/impl/sdk/m;->a(Ljava/lang/String;ILcom/fusepowered/al/impl/sdk/n;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bj;->a:Lcom/fusepowered/al/impl/sdk/bi;

    invoke-virtual {v0, p1}, Lcom/fusepowered/al/impl/sdk/bi;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bj;->a:Lcom/fusepowered/al/impl/sdk/bi;

    invoke-virtual {v0, p2}, Lcom/fusepowered/al/impl/sdk/bi;->a(I)V

    goto :goto_0
.end method
