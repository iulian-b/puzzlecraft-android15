.class public Lcom/fusepowered/as/proxy/PlacementProxy;
.super Ljava/lang/Object;
.source "PlacementProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchPlacement(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/as/controller/listener/FetchPlacementListener;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/fusepowered/as/controller/listener/FetchPlacementListener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/fusepowered/as/http/HttpTask;

    new-instance v1, Lcom/fusepowered/as/proxy/PlacementProxy$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/fusepowered/as/proxy/PlacementProxy$1;-><init>(Lcom/fusepowered/as/proxy/PlacementProxy;Lcom/fusepowered/as/controller/listener/FetchPlacementListener;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/fusepowered/as/http/HttpTask;-><init>(Lcom/fusepowered/as/http/HttpTaskListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Lcom/fusepowered/as/utils/UrlBuilder;

    invoke-direct {v3, p1, p2, p4}, Lcom/fusepowered/as/utils/UrlBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/fusepowered/as/utils/UrlBuilder;->buildUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/http/HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method
