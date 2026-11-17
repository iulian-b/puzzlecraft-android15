.class public Lcom/fusepowered/as/proxy/AdProxy;
.super Ljava/lang/Object;
.source "AdProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd(Lcom/fusepowered/as/model/fallback/ProxyFallback;Ljava/util/List;Lcom/fusepowered/as/controller/listener/FetchAdListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/as/model/fallback/ProxyFallback;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/as/controller/listener/FetchAdListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/fusepowered/as/http/HttpTask;

    new-instance v1, Lcom/fusepowered/as/proxy/AdProxy$1;

    invoke-direct {v1, p0, p3}, Lcom/fusepowered/as/proxy/AdProxy$1;-><init>(Lcom/fusepowered/as/proxy/AdProxy;Lcom/fusepowered/as/controller/listener/FetchAdListener;)V

    invoke-direct {v0, v1}, Lcom/fusepowered/as/http/HttpTask;-><init>(Lcom/fusepowered/as/http/HttpTaskListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/fusepowered/as/model/fallback/ProxyFallback;->getFallBackUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/http/HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method
