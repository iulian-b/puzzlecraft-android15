.class Lcom/fusepowered/as/controller/AdManager$2;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/ProviderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/as/controller/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/controller/AdManager;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/controller/AdManager;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpand(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 130
    if-nez p2, :cond_0

    .line 131
    new-instance v0, Lcom/fusepowered/as/controller/command/ExpandMraidCommand;

    invoke-direct {v0, p1}, Lcom/fusepowered/as/controller/command/ExpandMraidCommand;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/ExpandMraidCommand;->execute()V

    .line 167
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Lcom/fusepowered/as/controller/command/FetchAdCommand;

    new-instance v1, Lcom/fusepowered/as/controller/AdManager$2$1;

    invoke-direct {v1, p0, p2}, Lcom/fusepowered/as/controller/AdManager$2$1;-><init>(Lcom/fusepowered/as/controller/AdManager$2;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/fusepowered/as/controller/AdManager$2$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/fusepowered/as/controller/AdManager$2$2;-><init>(Lcom/fusepowered/as/controller/AdManager$2;Ljava/util/Properties;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/controller/command/FetchAdCommand;-><init>(Lcom/fusepowered/as/model/fallback/ProxyFallback;Ljava/util/List;Lcom/fusepowered/as/controller/listener/FetchAdListener;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FetchAdCommand;->execute()V

    goto :goto_0
.end method

.method public onProviderAttempt()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$500(Lcom/fusepowered/as/controller/AdManager;)Lcom/fusepowered/as/model/ad/ProviderAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/model/ad/ProviderAd;->getAdType()Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/model/ad/AdType;->THIRD_PARTY:Lcom/fusepowered/as/model/ad/AdType;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/model/ad/AdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$500(Lcom/fusepowered/as/controller/AdManager;)Lcom/fusepowered/as/model/ad/ProviderAd;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    .line 76
    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "AttemptURL"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Lcom/fusepowered/as/controller/command/FireEventCommand;

    invoke-direct {v1, v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an error parsing json for sdk2sdk attempt"

    invoke-static {v1, v2, v0}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onProviderFailure()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$500(Lcom/fusepowered/as/controller/AdManager;)Lcom/fusepowered/as/model/ad/ProviderAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/model/ad/ProviderAd;->getAdType()Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/model/ad/AdType;->THIRD_PARTY:Lcom/fusepowered/as/model/ad/AdType;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/model/ad/AdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$500(Lcom/fusepowered/as/controller/AdManager;)Lcom/fusepowered/as/model/ad/ProviderAd;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    .line 116
    :try_start_0
    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "FailedURL"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Lcom/fusepowered/as/controller/command/FireEventCommand;

    invoke-direct {v1, v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$600(Lcom/fusepowered/as/controller/AdManager;)V

    .line 125
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an error parsing json for sdk2sdk failure"

    invoke-static {v1, v2, v0}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onProviderFinished()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$300(Lcom/fusepowered/as/controller/AdManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->unregister(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$300(Lcom/fusepowered/as/controller/AdManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->unregister(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onProviderImpression()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$500(Lcom/fusepowered/as/controller/AdManager;)Lcom/fusepowered/as/model/ad/ProviderAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/model/ad/ProviderAd;->getAdType()Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/model/ad/AdType;->THIRD_PARTY:Lcom/fusepowered/as/model/ad/AdType;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/model/ad/AdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$500(Lcom/fusepowered/as/controller/AdManager;)Lcom/fusepowered/as/model/ad/ProviderAd;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    .line 92
    :try_start_0
    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ImpressionURL"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Lcom/fusepowered/as/controller/command/FireEventCommand;

    invoke-direct {v1, v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$300(Lcom/fusepowered/as/controller/AdManager;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_LOADED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 102
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an error parsing json for sdk2sdk impression"

    invoke-static {v1, v2, v0}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onVideoViewCreated(Landroid/widget/VideoView;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$2;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$400(Lcom/fusepowered/as/controller/AdManager;)Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;->onVideoViewCreated(Landroid/widget/VideoView;)V

    .line 68
    return-void
.end method
