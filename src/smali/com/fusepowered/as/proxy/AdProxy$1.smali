.class Lcom/fusepowered/as/proxy/AdProxy$1;
.super Ljava/lang/Object;
.source "AdProxy.java"

# interfaces
.implements Lcom/fusepowered/as/http/HttpTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/proxy/AdProxy;->getAd(Lcom/fusepowered/as/model/fallback/ProxyFallback;Ljava/util/List;Lcom/fusepowered/as/controller/listener/FetchAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/proxy/AdProxy;

.field final synthetic val$fetchAdListener:Lcom/fusepowered/as/controller/listener/FetchAdListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/proxy/AdProxy;Lcom/fusepowered/as/controller/listener/FetchAdListener;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fusepowered/as/proxy/AdProxy$1;->this$0:Lcom/fusepowered/as/proxy/AdProxy;

    iput-object p2, p0, Lcom/fusepowered/as/proxy/AdProxy$1;->val$fetchAdListener:Lcom/fusepowered/as/controller/listener/FetchAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpTaskFailure(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fusepowered/as/proxy/AdProxy$1;->val$fetchAdListener:Lcom/fusepowered/as/controller/listener/FetchAdListener;

    const-string v1, "Could not fetch ad. URL %s responded with %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusepowered/as/controller/listener/FetchAdListener;->onAdFailure(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onHttpTaskSuccess(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/fusepowered/as/proxy/AdProxy$1$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/proxy/AdProxy$1$1;-><init>(Lcom/fusepowered/as/proxy/AdProxy$1;)V

    invoke-static {p3, p4, v0}, Lcom/fusepowered/as/factory/AdFactory;->buildAd(Ljava/util/Map;Ljava/lang/String;Lcom/fusepowered/as/controller/listener/AdFactoryListener;)V

    .line 51
    return-void
.end method
