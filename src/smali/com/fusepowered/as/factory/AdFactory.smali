.class public Lcom/fusepowered/as/factory/AdFactory;
.super Ljava/lang/Object;
.source "AdFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/as/factory/AdFactory$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAd(Ljava/util/Map;Ljava/lang/String;Lcom/fusepowered/as/controller/listener/AdFactoryListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/fusepowered/as/controller/listener/AdFactoryListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    :try_start_0
    sget-object v0, Lcom/fusepowered/as/factory/AdFactory$1;->$SwitchMap$com$aerserv$sdk$model$ad$AdType:[I

    invoke-static {p0, p1}, Lcom/fusepowered/as/factory/AdFactory;->detectAdType(Ljava/util/Map;Ljava/lang/String;)Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/AdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detectAdType returned unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/fusepowered/as/factory/AdFactory;->detectAdType(Ljava/util/Map;Ljava/lang/String;)Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    const-class v1, Lcom/fusepowered/as/factory/AdFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdFactory failed to build ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/fusepowered/as/controller/listener/AdFactoryListener;->adBuildFailed(Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 25
    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/fusepowered/as/model/ad/HTMLProviderAd;

    invoke-direct {v0, p1}, Lcom/fusepowered/as/model/ad/HTMLProviderAd;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/fusepowered/as/controller/listener/AdFactoryListener;->adBuilt(Lcom/fusepowered/as/model/ad/ProviderAd;)V

    goto :goto_0

    .line 28
    :pswitch_1
    new-instance v0, Lcom/fusepowered/as/model/ad/MraidProviderAd;

    invoke-direct {v0, p1}, Lcom/fusepowered/as/model/ad/MraidProviderAd;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/fusepowered/as/controller/listener/AdFactoryListener;->adBuilt(Lcom/fusepowered/as/model/ad/ProviderAd;)V

    goto :goto_0

    .line 31
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->buildVASTAd(Ljava/util/Map;Ljava/lang/String;Lcom/fusepowered/as/controller/listener/AdFactoryListener;)V

    goto :goto_0

    .line 34
    :pswitch_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    new-instance v2, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {v2, v0, v1}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 37
    invoke-interface {p2, v2}, Lcom/fusepowered/as/controller/listener/AdFactoryListener;->adBuilt(Lcom/fusepowered/as/model/ad/ProviderAd;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static buildExpandedMraidProviderAd(Lcom/fusepowered/as/model/ad/HTMLProviderAd;)Lcom/fusepowered/as/model/ad/MraidProviderAd;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/fusepowered/as/model/ad/MraidProviderAd;

    invoke-virtual {p0}, Lcom/fusepowered/as/model/ad/HTMLProviderAd;->getHTML()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/ad/AdType;->EXPANDED_MRAID:Lcom/fusepowered/as/model/ad/AdType;

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/model/ad/MraidProviderAd;-><init>(Ljava/lang/String;Lcom/fusepowered/as/model/ad/AdType;)V

    return-object v0
.end method

.method public static buildVideoMraidProviderAd(Lcom/fusepowered/as/model/ad/MraidProviderAd;)Lcom/fusepowered/as/model/ad/MraidProviderAd;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/fusepowered/as/model/ad/MraidProviderAd;

    invoke-virtual {p0}, Lcom/fusepowered/as/model/ad/MraidProviderAd;->getHTML()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/ad/AdType;->VIDEO:Lcom/fusepowered/as/model/ad/AdType;

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/model/ad/MraidProviderAd;-><init>(Ljava/lang/String;Lcom/fusepowered/as/model/ad/AdType;)V

    return-object v0
.end method

.method private static detectAdType(Ljava/util/Map;Ljava/lang/String;)Lcom/fusepowered/as/model/ad/AdType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fusepowered/as/model/ad/AdType;"
        }
    .end annotation

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 61
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    const-string v2, "json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    sget-object v0, Lcom/fusepowered/as/model/ad/AdType;->THIRD_PARTY:Lcom/fusepowered/as/model/ad/AdType;

    .line 75
    :goto_0
    const-class v1, Lcom/fusepowered/as/factory/AdFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad type determined to be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-object v0

    .line 65
    :cond_0
    const-string v2, "xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    sget-object v0, Lcom/fusepowered/as/model/ad/AdType;->VAST:Lcom/fusepowered/as/model/ad/AdType;

    goto :goto_0

    .line 67
    :cond_1
    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    const-string v0, "mraid.js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    sget-object v0, Lcom/fusepowered/as/model/ad/AdType;->MRAID:Lcom/fusepowered/as/model/ad/AdType;

    goto :goto_0

    .line 71
    :cond_2
    sget-object v0, Lcom/fusepowered/as/model/ad/AdType;->HTML:Lcom/fusepowered/as/model/ad/AdType;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
