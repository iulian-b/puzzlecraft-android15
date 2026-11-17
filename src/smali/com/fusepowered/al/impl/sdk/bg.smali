.class Lcom/fusepowered/al/impl/sdk/bg;
.super Lcom/fusepowered/al/impl/sdk/ay;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    const-string v0, "SubmitData"

    invoke-direct {p0, v0, p1}, Lcom/fusepowered/al/impl/sdk/ay;-><init>(Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method a(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/al/impl/sdk/o;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bg;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/fusepowered/al/impl/sdk/bc;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/al/impl/sdk/az;->c:Lcom/fusepowered/al/impl/sdk/bb;

    const-string v3, "device_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/al/impl/sdk/bc;->a(Lcom/fusepowered/al/impl/sdk/bb;Ljava/lang/Object;)V

    sget-object v2, Lcom/fusepowered/al/impl/sdk/az;->e:Lcom/fusepowered/al/impl/sdk/bb;

    const-string v3, "device_token"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/al/impl/sdk/bc;->a(Lcom/fusepowered/al/impl/sdk/bb;Ljava/lang/Object;)V

    sget-object v2, Lcom/fusepowered/al/impl/sdk/az;->d:Lcom/fusepowered/al/impl/sdk/bb;

    const-string v3, "publisher_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/al/impl/sdk/bc;->a(Lcom/fusepowered/al/impl/sdk/bb;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bc;->b()V

    iget-object v2, p0, Lcom/fusepowered/al/impl/sdk/bg;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v2}, Lcom/fusepowered/al/impl/sdk/o;->a(Lorg/json/JSONObject;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    const-string v2, "adserver_parameters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "adserver_parameters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/fusepowered/al/impl/sdk/az;->y:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v1, v2, v0}, Lcom/fusepowered/al/impl/sdk/bc;->a(Lcom/fusepowered/al/impl/sdk/bb;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bg;->g:Lcom/fusepowered/al/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/fusepowered/al/impl/sdk/bg;->e:Ljava/lang/String;

    const-string v3, "Unable to parse API response"

    invoke-interface {v1, v2, v3, v0}, Lcom/fusepowered/al/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Lorg/json/JSONObject;)V
    .locals 8

    invoke-virtual {p0}, Lcom/fusepowered/al/impl/sdk/bg;->c()Lcom/fusepowered/al/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/p;->b()Lcom/fusepowered/al/impl/sdk/r;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/p;->a()Lcom/fusepowered/al/impl/sdk/s;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "model"

    iget-object v5, v2, Lcom/fusepowered/al/impl/sdk/s;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "os"

    iget-object v5, v2, Lcom/fusepowered/al/impl/sdk/s;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "brand"

    iget-object v5, v2, Lcom/fusepowered/al/impl/sdk/s;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sdk_version"

    iget v5, v2, Lcom/fusepowered/al/impl/sdk/s;->e:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "revision"

    iget-object v5, v2, Lcom/fusepowered/al/impl/sdk/s;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "country_code"

    iget-object v5, v2, Lcom/fusepowered/al/impl/sdk/s;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "carrier"

    iget-object v5, v2, Lcom/fusepowered/al/impl/sdk/s;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "type"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/p;->c()Lcom/fusepowered/al/impl/sdk/q;

    move-result-object v0

    iget-object v4, v0, Lcom/fusepowered/al/impl/sdk/q;->b:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/fusepowered/al/impl/sdk/q;->a:Z

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/fusepowered/al/impl/sdk/cb;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "idfa"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, v2, Lcom/fusepowered/al/impl/sdk/s;->h:Ljava/util/Locale;

    if-eqz v0, :cond_1

    const-string v2, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "device_info"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "package_name"

    iget-object v3, v1, Lcom/fusepowered/al/impl/sdk/r;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_name"

    iget-object v3, v1, Lcom/fusepowered/al/impl/sdk/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_version"

    iget-object v3, v1, Lcom/fusepowered/al/impl/sdk/r;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "created_at"

    iget-wide v4, v1, Lcom/fusepowered/al/impl/sdk/r;->d:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "applovin_sdk_version"

    const-string v1, "5.4.2"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bg;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/fusepowered/al/impl/sdk/az;->P:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "first_install"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bg;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/fusepowered/al/impl/sdk/bc;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/al/impl/sdk/az;->P:Lcom/fusepowered/al/impl/sdk/bb;

    const-string v3, "false"

    invoke-virtual {v0, v1, v3}, Lcom/fusepowered/al/impl/sdk/bc;->a(Lcom/fusepowered/al/impl/sdk/bb;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bg;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/fusepowered/al/impl/sdk/az;->F:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "plugin_version"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v0, "app_info"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bg;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/fusepowered/al/impl/sdk/az;->N:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bg;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getTargetingData()Lcom/fusepowered/al/sdk/AppLovinTargetingData;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/al/impl/sdk/k;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/k;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/as;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "targeting"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bg;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->b()Lcom/fusepowered/al/impl/sdk/be;

    move-result-object v0

    const-string v1, "stats"

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/be;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-void
.end method

.method c(Lorg/json/JSONObject;)V
    .locals 6

    new-instance v0, Lcom/fusepowered/al/impl/sdk/bh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Repeat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/al/impl/sdk/bg;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/al/impl/sdk/az;->g:Lcom/fusepowered/al/impl/sdk/bb;

    iget-object v4, p0, Lcom/fusepowered/al/impl/sdk/bg;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/al/impl/sdk/bh;-><init>(Lcom/fusepowered/al/impl/sdk/bg;Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/bb;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;Lorg/json/JSONObject;)V

    sget-object v1, Lcom/fusepowered/al/impl/sdk/az;->k:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/br;->a(Lcom/fusepowered/al/impl/sdk/bb;)V

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/br;->run()V

    return-void
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bg;->g:Lcom/fusepowered/al/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bg;->e:Ljava/lang/String;

    const-string v2, "Submitting user data..."

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/al/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/impl/sdk/bg;->b(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/impl/sdk/bg;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bg;->g:Lcom/fusepowered/al/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/fusepowered/al/impl/sdk/bg;->e:Ljava/lang/String;

    const-string v3, "Unable to create JSON message with collected data"

    invoke-interface {v1, v2, v3, v0}, Lcom/fusepowered/al/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
