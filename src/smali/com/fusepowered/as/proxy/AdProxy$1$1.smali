.class Lcom/fusepowered/as/proxy/AdProxy$1$1;
.super Ljava/lang/Object;
.source "AdProxy.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/AdFactoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/proxy/AdProxy$1;->onHttpTaskSuccess(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/as/proxy/AdProxy$1;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/proxy/AdProxy$1;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fusepowered/as/proxy/AdProxy$1$1;->this$1:Lcom/fusepowered/as/proxy/AdProxy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adBuildFailed(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fusepowered/as/proxy/AdProxy$1$1;->this$1:Lcom/fusepowered/as/proxy/AdProxy$1;

    iget-object v0, v0, Lcom/fusepowered/as/proxy/AdProxy$1;->val$fetchAdListener:Lcom/fusepowered/as/controller/listener/FetchAdListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/as/controller/listener/FetchAdListener;->onAdFailure(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public adBuilt(Lcom/fusepowered/as/model/ad/ProviderAd;)V
    .locals 2

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/fusepowered/as/proxy/AdProxy$1$1;->this$1:Lcom/fusepowered/as/proxy/AdProxy$1;

    iget-object v0, v0, Lcom/fusepowered/as/proxy/AdProxy$1;->val$fetchAdListener:Lcom/fusepowered/as/controller/listener/FetchAdListener;

    const-string v1, "Could not fetch ad.  Error parsing ad from response"

    invoke-interface {v0, v1}, Lcom/fusepowered/as/controller/listener/FetchAdListener;->onAdFailure(Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/proxy/AdProxy$1$1;->this$1:Lcom/fusepowered/as/proxy/AdProxy$1;

    iget-object v0, v0, Lcom/fusepowered/as/proxy/AdProxy$1;->val$fetchAdListener:Lcom/fusepowered/as/controller/listener/FetchAdListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/as/controller/listener/FetchAdListener;->onAdSuccess(Lcom/fusepowered/as/model/ad/ProviderAd;)V

    goto :goto_0
.end method
