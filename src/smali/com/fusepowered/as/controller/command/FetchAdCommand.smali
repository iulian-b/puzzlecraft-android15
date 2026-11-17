.class public Lcom/fusepowered/as/controller/command/FetchAdCommand;
.super Ljava/lang/Object;
.source "FetchAdCommand.java"

# interfaces
.implements Lcom/fusepowered/as/controller/command/Command;


# instance fields
.field private fallback:Lcom/fusepowered/as/model/fallback/ProxyFallback;

.field private fetchAdListener:Lcom/fusepowered/as/controller/listener/FetchAdListener;

.field private keyWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/as/model/fallback/ProxyFallback;Ljava/util/List;Lcom/fusepowered/as/controller/listener/FetchAdListener;)V
    .locals 0
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
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/fusepowered/as/controller/command/FetchAdCommand;->fallback:Lcom/fusepowered/as/model/fallback/ProxyFallback;

    .line 22
    iput-object p2, p0, Lcom/fusepowered/as/controller/command/FetchAdCommand;->keyWords:Ljava/util/List;

    .line 23
    iput-object p3, p0, Lcom/fusepowered/as/controller/command/FetchAdCommand;->fetchAdListener:Lcom/fusepowered/as/controller/listener/FetchAdListener;

    .line 25
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/fusepowered/as/proxy/AdProxy;

    invoke-direct {v0}, Lcom/fusepowered/as/proxy/AdProxy;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/as/controller/command/FetchAdCommand;->fallback:Lcom/fusepowered/as/model/fallback/ProxyFallback;

    iget-object v2, p0, Lcom/fusepowered/as/controller/command/FetchAdCommand;->keyWords:Ljava/util/List;

    iget-object v3, p0, Lcom/fusepowered/as/controller/command/FetchAdCommand;->fetchAdListener:Lcom/fusepowered/as/controller/listener/FetchAdListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/as/proxy/AdProxy;->getAd(Lcom/fusepowered/as/model/fallback/ProxyFallback;Ljava/util/List;Lcom/fusepowered/as/controller/listener/FetchAdListener;)V

    .line 30
    return-void
.end method
