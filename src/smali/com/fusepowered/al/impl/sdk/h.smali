.class Lcom/fusepowered/al/impl/sdk/h;
.super Lcom/fusepowered/al/impl/sdk/ay;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/sdk/d;

.field private final b:Lcom/fusepowered/al/sdk/AppLovinAdSize;


# direct methods
.method public constructor <init>(Lcom/fusepowered/al/impl/sdk/d;Lcom/fusepowered/al/sdk/AppLovinAdSize;)V
    .locals 2

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/h;->a:Lcom/fusepowered/al/impl/sdk/d;

    const-string v0, "UpdateAdTask"

    invoke-static {p1}, Lcom/fusepowered/al/impl/sdk/d;->b(Lcom/fusepowered/al/impl/sdk/d;)Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/al/impl/sdk/ay;-><init>(Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    iput-object p2, p0, Lcom/fusepowered/al/impl/sdk/h;->b:Lcom/fusepowered/al/sdk/AppLovinAdSize;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/h;->a:Lcom/fusepowered/al/impl/sdk/d;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/d;->c(Lcom/fusepowered/al/impl/sdk/d;)Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lcom/fusepowered/al/sdk/AppLovinAdType;->REGULAR:Lcom/fusepowered/al/sdk/AppLovinAdType;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v3, p0, Lcom/fusepowered/al/impl/sdk/h;->b:Lcom/fusepowered/al/sdk/AppLovinAdSize;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/al/impl/sdk/g;

    iget-object v4, v0, Lcom/fusepowered/al/impl/sdk/g;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/al/impl/sdk/h;->a:Lcom/fusepowered/al/impl/sdk/d;

    iget-object v5, p0, Lcom/fusepowered/al/impl/sdk/h;->b:Lcom/fusepowered/al/sdk/AppLovinAdSize;

    invoke-static {v3, v5}, Lcom/fusepowered/al/impl/sdk/d;->a(Lcom/fusepowered/al/impl/sdk/d;Lcom/fusepowered/al/sdk/AppLovinAdSize;)Z

    move-result v5

    iget-object v3, p0, Lcom/fusepowered/al/impl/sdk/h;->a:Lcom/fusepowered/al/impl/sdk/d;

    invoke-static {v3}, Lcom/fusepowered/al/impl/sdk/d;->d(Lcom/fusepowered/al/impl/sdk/d;)Z

    move-result v6

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/g;->b(Lcom/fusepowered/al/impl/sdk/g;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/fusepowered/al/impl/sdk/g;->d:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    :goto_1
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    iget-boolean v1, v0, Lcom/fusepowered/al/impl/sdk/g;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/al/impl/sdk/g;->e:Z

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/h;->a:Lcom/fusepowered/al/impl/sdk/d;

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/h;->b:Lcom/fusepowered/al/sdk/AppLovinAdSize;

    sget-object v2, Lcom/fusepowered/al/sdk/AppLovinAdType;->REGULAR:Lcom/fusepowered/al/sdk/AppLovinAdType;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/al/impl/sdk/d;->a(Lcom/fusepowered/al/impl/sdk/d;Lcom/fusepowered/al/sdk/AppLovinAdSize;Lcom/fusepowered/al/sdk/AppLovinAdType;)V

    :cond_0
    monitor-exit v4

    return-void

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
