.class Lcom/fusepowered/al/impl/sdk/bt;
.super Lcom/fusepowered/al/impl/sdk/aw;


# instance fields
.field private final a:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;


# direct methods
.method public constructor <init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1

    const-string v0, "TaskReportReward"

    invoke-direct {p0, v0, p1}, Lcom/fusepowered/al/impl/sdk/aw;-><init>(Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    check-cast p2, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    iput-object p2, p0, Lcom/fusepowered/al/impl/sdk/bt;->a:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/al/impl/sdk/bt;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bt;->a:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/fusepowered/al/impl/sdk/u;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bt;->a:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getClCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v1}, Lcom/fusepowered/al/impl/sdk/cb;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "clcode"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "user_id"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/fusepowered/al/impl/sdk/at;->a()Lcom/fusepowered/al/impl/sdk/at;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bt;->a:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/at;->b(Lcom/fusepowered/al/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v3, "result"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bt;->a:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/at;->a(Lcom/fusepowered/al/sdk/AppLovinAd;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "params"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "cr"

    new-instance v2, Lcom/fusepowered/al/impl/sdk/bu;

    invoke-direct {v2, p0}, Lcom/fusepowered/al/impl/sdk/bu;-><init>(Lcom/fusepowered/al/impl/sdk/bt;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/fusepowered/al/impl/sdk/bt;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/fusepowered/al/impl/sdk/n;)V

    :goto_1
    return-void

    :cond_2
    const-string v1, "clcode"

    const-string v3, "NO_CLCODE"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bt;->g:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v1, "TaskReportReward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No reward result was found for ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/al/impl/sdk/bt;->a:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/al/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
