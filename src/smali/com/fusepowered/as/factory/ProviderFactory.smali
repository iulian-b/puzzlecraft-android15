.class public Lcom/fusepowered/as/factory/ProviderFactory;
.super Ljava/lang/Object;
.source "ProviderFactory.java"


# static fields
.field private static final CLASS_BANNER_POSTFIX:Ljava/lang/String; = "BannerProvider"

.field private static final CLASS_INTERSTITIAL_POSTFIX:Ljava/lang/String; = "InterstitialProvider"

.field private static final CLASS_PREFIX:Ljava/lang/String; = "com.fusepowered.as.adapter."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildProvider(Lcom/fusepowered/as/model/ad/ProviderAd;Lcom/fusepowered/as/controller/listener/ProviderListener;Landroid/content/Context;Lcom/fusepowered/as/AerServAdType;Lcom/fusepowered/as/view/View;Ljava/lang/String;ZZ)Lcom/fusepowered/as/adapter/Provider;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 57
    const-string v2, "providerAd"

    invoke-virtual {v0, v2, p0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v2, "providerListener"

    invoke-virtual {v0, v2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v2, "context"

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    if-eqz p4, :cond_0

    .line 61
    const-string v2, "viewGroup"

    invoke-virtual {v0, v2, p4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    const-string v2, "controllerId"

    invoke-virtual {v0, v2, p5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v2, "isDebug"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v2, "isPreload"

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {p0}, Lcom/fusepowered/as/model/ad/ProviderAd;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/fusepowered/as/factory/ProviderFactory;->getAdClass(Ljava/lang/String;Lcom/fusepowered/as/AerServAdType;)Ljava/lang/Class;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_1

    .line 75
    :try_start_0
    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/Properties;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/adapter/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 86
    :cond_1
    :goto_1
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-class v2, Lcom/fusepowered/as/factory/ProviderFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "There was an error trying to create 3rd party provider.  No method found on class"

    invoke-static {v2, v3, v0}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static getAdClass(Ljava/lang/String;Lcom/fusepowered/as/AerServAdType;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fusepowered/as/AerServAdType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v3, "com.fusepowered.as.adapter."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    sget-object v1, Lcom/fusepowered/as/AerServAdType;->INTERSTITIAL:Lcom/fusepowered/as/AerServAdType;

    invoke-virtual {p1, v1}, Lcom/fusepowered/as/AerServAdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const-string v1, "InterstitialProvider"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 105
    :cond_1
    sget-object v1, Lcom/fusepowered/as/AerServAdType;->BANNER:Lcom/fusepowered/as/AerServAdType;

    invoke-virtual {p1, v1}, Lcom/fusepowered/as/AerServAdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "BannerProvider"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    const-class v2, Lcom/fusepowered/as/factory/ProviderFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "There was an error trying to create 3rd party provider.  No class in the classpath"

    invoke-static {v2, v3, v1}, Lcom/fusepowered/as/utils/AerServLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
