.class public Lcom/fusepowered/l1/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/l1/ResponseParser$Listener;
    }
.end annotation


# static fields
.field private static final JSON_EXPIRED_TIME:Ljava/lang/String; = "ad_expiry_time"

.field private static final JSON_FORMAT:Ljava/lang/String; = "format"

.field private static final JSON_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final JSON_REFRESH_TIME:Ljava/lang/String; = "ad_refresh_time"

.field private static final JSON_SCRIPT:Ljava/lang/String; = "script"

.field private static final JSON_SETTINGS:Ljava/lang/String; = "settings"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/fusepowered/l1/ResponseParser$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/fusepowered/l1/ResponseParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/ResponseParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/l1/ResponseParser$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fusepowered/l1/ResponseParser$Listener;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/l1/ResponseParser;->mListener:Lcom/fusepowered/l1/ResponseParser$Listener;

    .line 29
    return-void
.end method

.method private getRequestedAdFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/fusepowered/l1/BaseAdHolder;->get()Lcom/fusepowered/l1/BaseAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/l1/BaseAd;->getAdFormat()Lcom/fusepowered/l1/AdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdFormat;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "jsonParam"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 84
    .local v1, "value":I
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 88
    :goto_0
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/fusepowered/l1/ResponseParser;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " absent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v2, v3, v4}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_0
.end method

.method private parseString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "jsonParam"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/fusepowered/l1/ResponseParser;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " absent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v2, v3, v4}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdParams(Ljava/lang/String;)Lcom/fusepowered/l1/AdParams;
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 32
    if-nez p1, :cond_0

    move-object v6, v7

    .line 58
    :goto_0
    return-object v6

    .line 35
    :cond_0
    const/4 v3, 0x0

    .line 36
    .local v3, "format":Ljava/lang/String;
    const/4 v4, 0x0

    .line 37
    .local v4, "object":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 40
    .local v5, "settings":Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONTokener;

    invoke-direct {v6, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0

    .line 41
    const-string v6, "settings"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 43
    const-string v6, "format"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-direct {p0}, Lcom/fusepowered/l1/ResponseParser;->getRequestedAdFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 45
    iget-object v6, p0, Lcom/fusepowered/l1/ResponseParser;->mListener:Lcom/fusepowered/l1/ResponseParser$Listener;

    const-string v8, "Wrong Ad format"

    invoke-interface {v6, v8}, Lcom/fusepowered/l1/ResponseParser$Listener;->onParseError(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v7

    .line 46
    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/fusepowered/l1/ResponseParser;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v6, v8, v9}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 51
    iget-object v6, p0, Lcom/fusepowered/l1/ResponseParser;->mListener:Lcom/fusepowered/l1/ResponseParser$Listener;

    const-string v8, "Exception during json parse"

    invoke-interface {v6, v8}, Lcom/fusepowered/l1/ResponseParser$Listener;->onParseError(Ljava/lang/String;)V

    move-object v6, v7

    .line 52
    goto :goto_0

    .line 53
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 54
    .local v2, "ex":Ljava/lang/ClassCastException;
    sget-object v6, Lcom/fusepowered/l1/ResponseParser;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v6, v8, v9}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 55
    iget-object v6, p0, Lcom/fusepowered/l1/ResponseParser;->mListener:Lcom/fusepowered/l1/ResponseParser$Listener;

    const-string v8, "Exception during json parse"

    invoke-interface {v6, v8}, Lcom/fusepowered/l1/ResponseParser$Listener;->onParseError(Ljava/lang/String;)V

    move-object v6, v7

    .line 56
    goto :goto_0

    .line 58
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    :cond_1
    new-instance v6, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;

    invoke-direct {v6, v3}, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "script"

    invoke-direct {p0, v4, v7}, Lcom/fusepowered/l1/ResponseParser;->parseString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->html(Ljava/lang/String;)Lcom/fusepowered/l1/AdParams$AdParamsBuilder;

    move-result-object v6

    const-string v7, "orientation"

    invoke-direct {p0, v5, v7}, Lcom/fusepowered/l1/ResponseParser;->parseString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->orientation(Ljava/lang/String;)Lcom/fusepowered/l1/AdParams$AdParamsBuilder;

    move-result-object v6

    const-string v7, "ad_refresh_time"

    invoke-direct {p0, v5, v7}, Lcom/fusepowered/l1/ResponseParser;->parseInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->refreshTime(I)Lcom/fusepowered/l1/AdParams$AdParamsBuilder;

    move-result-object v6

    const-string v7, "ad_expiry_time"

    invoke-direct {p0, v5, v7}, Lcom/fusepowered/l1/ResponseParser;->parseInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->expiredTime(I)Lcom/fusepowered/l1/AdParams$AdParamsBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->build()Lcom/fusepowered/l1/AdParams;

    move-result-object v6

    goto/16 :goto_0
.end method
