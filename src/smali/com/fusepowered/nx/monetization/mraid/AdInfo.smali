.class public Lcom/fusepowered/nx/monetization/mraid/AdInfo;
.super Lorg/json/JSONObject;
.source "AdInfo.java"


# instance fields
.field private placement:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getAdBehaviorJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 36
    :try_start_0
    const-string v0, "AdBehaviors"

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "AdBehaviors"

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdInfo;->placement:Ljava/lang/String;

    return-object v0
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/AdInfo;->placement:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public willPlayAudio()Z
    .locals 2

    .prologue
    .line 48
    :try_start_0
    const-string v1, "AdBehaviors"

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "AdBehaviors"

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 50
    .local v0, "adBehavior":Lorg/json/JSONObject;
    const-string v1, "WillPlayAudio"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "WillPlayAudio"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 57
    .end local v0    # "adBehavior":Lorg/json/JSONObject;
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v1

    .line 57
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
