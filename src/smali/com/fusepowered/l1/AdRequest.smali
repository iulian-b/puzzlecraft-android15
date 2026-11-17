.class Lcom/fusepowered/l1/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PARAM_APPKEY:Ljava/lang/String; = "ak"

.field private static final PARAM_APP_VERSION:Ljava/lang/String; = "av"

.field private static final PARAM_CARRIER:Ljava/lang/String; = "carrier"

.field private static final PARAM_CONNECTION_TYPE:Ljava/lang/String; = "ct"

.field private static final PARAM_DNT:Ljava/lang/String; = "dnt"

.field private static final PARAM_GENDER:Ljava/lang/String; = "gender"

.field private static final PARAM_KEYWORDS:Ljava/lang/String; = "keywords"

.field private static final PARAM_LANGUAGE:Ljava/lang/String; = "lng"

.field private static final PARAM_LATITUDE:Ljava/lang/String; = "lat"

.field private static final PARAM_LONGITUDE:Ljava/lang/String; = "lon"

.field private static final PARAM_MRAID:Ljava/lang/String; = "mr"

.field private static final PARAM_ORIENTATION:Ljava/lang/String; = "or"

.field private static final PARAM_SDK_VERSION:Ljava/lang/String; = "sv"

.field private static final PARAM_TESTMODE:Ljava/lang/String; = "tm"

.field private static final PARAM_VIEWER_TOKEN:Ljava/lang/String; = "vt"

.field private static final PARAM_YEAR_OF_BIRTH:Ljava/lang/String; = "yob"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/fusepowered/l1/AdRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/AdRequest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/fusepowered/l1/AdRequest;->mContext:Landroid/content/Context;

    .line 38
    if-nez p1, :cond_0

    .line 39
    sget-object v0, Lcom/fusepowered/l1/AdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Context should not be null"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public getRequestUrl(Ljava/lang/String;Lcom/fusepowered/l1/UserMetaData;)Ljava/lang/String;
    .locals 13
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/fusepowered/l1/UserMetaData;

    .prologue
    .line 44
    iget-object v10, p0, Lcom/fusepowered/l1/AdRequest;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/fusepowered/l1/IdentityProvider;->getInstance(Landroid/content/Context;)Lcom/fusepowered/l1/IdentityProvider;

    move-result-object v3

    .line 46
    .local v3, "identity":Lcom/fusepowered/l1/IdentityProvider;
    sget-object v8, Lcom/fusepowered/l1/StaticParams;->URL_MOBILE:Ljava/lang/String;

    .line 47
    .local v8, "str":Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 49
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 50
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v10, "http"

    invoke-virtual {v0, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 52
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 53
    .local v7, "s":Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-nez v10, :cond_0

    .line 54
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 59
    .end local v7    # "s":Ljava/lang/String;
    :cond_1
    const-string v10, "ak"

    invoke-virtual {v0, v10, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "ct"

    invoke-virtual {v3}, Lcom/fusepowered/l1/IdentityProvider;->getConnectionType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "lng"

    invoke-virtual {v3}, Lcom/fusepowered/l1/IdentityProvider;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "sv"

    const-string v12, "4.0.5"

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "av"

    invoke-virtual {v3}, Lcom/fusepowered/l1/IdentityProvider;->getAppVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "mr"

    invoke-virtual {v3}, Lcom/fusepowered/l1/IdentityProvider;->getMraidSupport()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "or"

    invoke-virtual {v3}, Lcom/fusepowered/l1/IdentityProvider;->getOrientation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "vt"

    invoke-virtual {v3}, Lcom/fusepowered/l1/IdentityProvider;->getViewerToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 68
    invoke-virtual {v3}, Lcom/fusepowered/l1/IdentityProvider;->getLatitude()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "latitude":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 70
    const-string v10, "lat"

    invoke-virtual {v0, v10, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 73
    :cond_2
    invoke-virtual {v3}, Lcom/fusepowered/l1/IdentityProvider;->getLongitude()Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "longitude":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 75
    const-string v10, "lon"

    invoke-virtual {v0, v10, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 78
    :cond_3
    invoke-virtual {v3}, Lcom/fusepowered/l1/IdentityProvider;->getCarrier()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "carrier":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 80
    const-string v10, "carrier"

    invoke-virtual {v0, v10, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    :cond_4
    invoke-virtual {v3}, Lcom/fusepowered/l1/IdentityProvider;->isDntPresent()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 84
    const-string v10, "dnt"

    const-string v11, "1"

    invoke-virtual {v0, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 87
    :cond_5
    invoke-virtual {v3}, Lcom/fusepowered/l1/IdentityProvider;->isTestModeOn()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 88
    const-string v10, "tm"

    const-string v11, "1"

    invoke-virtual {v0, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    :cond_6
    invoke-virtual {p2}, Lcom/fusepowered/l1/UserMetaData;->getKeywords()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 92
    const-string v10, "keywords"

    invoke-virtual {p2}, Lcom/fusepowered/l1/UserMetaData;->getKeywords()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    :cond_7
    invoke-virtual {p2}, Lcom/fusepowered/l1/UserMetaData;->getGender()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 96
    const-string v10, "gender"

    invoke-virtual {p2}, Lcom/fusepowered/l1/UserMetaData;->getGender()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    :cond_8
    invoke-virtual {p2}, Lcom/fusepowered/l1/UserMetaData;->getYob()I

    move-result v10

    if-eqz v10, :cond_9

    .line 100
    const-string v10, "yob"

    invoke-virtual {p2}, Lcom/fusepowered/l1/UserMetaData;->getYob()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 103
    :cond_9
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, "url":Ljava/lang/String;
    return-object v9
.end method
