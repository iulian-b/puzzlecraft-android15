.class public Lcom/chillingo/liboffers/OfferSessionImpl;
.super Ljava/lang/Object;
.source "OfferSessionImpl.java"

# interfaces
.implements Lcom/chillingo/liboffers/OfferSession;


# instance fields
.field private context:Landroid/content/Context;

.field private privateSession:Lcom/chillingo/liboffers/session/OfferPrivateSession;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/OfferSessionListener;Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;Landroid/content/Context;)V
    .locals 4
    .param p1, "listener"    # Lcom/chillingo/liboffers/OfferSessionListener;
    .param p2, "theme"    # Ljava/lang/String;
    .param p3, "storeType"    # Lcom/chillingo/liboffers/OfferSession$StoreType;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->context:Landroid/content/Context;

    .line 21
    iput-object v1, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->privateSession:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    .line 35
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialiseSession [listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][theme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/chillingo/liboffers/utils/DeviceUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][store "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/chillingo/liboffers/OfferSession$StoreType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->publicAPI(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iput-object p4, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->context:Landroid/content/Context;

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Offers Error: invalid listener specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    if-nez p2, :cond_1

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Offers Error: invalid theme specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Offers Error: empty theme specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->init(Lcom/chillingo/liboffers/OfferSessionListener;Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->annotationsClosedown()V

    goto :goto_0
.end method

.method private getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;
    .locals 8

    .prologue
    .line 227
    iget-object v4, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->privateSession:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    if-eqz v4, :cond_0

    .line 228
    iget-object v3, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->privateSession:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    .line 252
    :goto_0
    return-object v3

    .line 230
    :cond_0
    const/4 v3, 0x0

    .line 232
    .local v3, "ps":Lcom/chillingo/liboffers/session/OfferPrivateSession;
    iget-object v4, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->context:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 233
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Offers Error: No static context set yet"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 237
    :cond_1
    :try_start_0
    const-string v4, "com.chillingo.liboffers.session.OfferPrivateSession_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 238
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getInstance_"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 239
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->context:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ps":Lcom/chillingo/liboffers/session/OfferPrivateSession;
    check-cast v3, Lcom/chillingo/liboffers/session/OfferPrivateSession;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 251
    .restart local v3    # "ps":Lcom/chillingo/liboffers/session/OfferPrivateSession;
    iput-object v3, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->privateSession:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    goto :goto_0

    .line 241
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "ps":Lcom/chillingo/liboffers/session/OfferPrivateSession;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Offers Error: Unable to get the private session class"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 243
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Offers Error: Unable to get the getInstance() method"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 245
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Offers Error: Unable to call method"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 247
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Offers Error: Unable to call method"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public activateUIOverActivity(Landroid/app/Activity;Lcom/chillingo/liboffers/OfferSession$OffersCorner;Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "corner"    # Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    .param p3, "frameInterval"    # Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateUIOverActviity ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->publicAPI(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Offers Error: invalid activity specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->isUIActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const-string v1, "Offers"

    const-string v2, "Offer UI already active"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->publicAPI(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->activateUIOverActivity(Landroid/app/Activity;Lcom/chillingo/liboffers/OfferSession$OffersCorner;Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public closeSession()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    const-string v1, "Offers"

    const-string v2, "closeSession"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->publicAPI(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->closeSession()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->annotationsClosedown()V

    .line 77
    iput-object v4, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->context:Landroid/content/Context;

    .line 78
    iput-object v4, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->privateSession:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    .line 80
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->annotationsClosedown()V

    .line 77
    iput-object v4, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->context:Landroid/content/Context;

    .line 78
    iput-object v4, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->privateSession:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->annotationsClosedown()V

    .line 77
    iput-object v4, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->context:Landroid/content/Context;

    .line 78
    iput-object v4, p0, Lcom/chillingo/liboffers/OfferSessionImpl;->privateSession:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    throw v1
.end method

.method public deactivateUI()V
    .locals 4

    .prologue
    .line 121
    const-string v1, "Offers"

    const-string v2, "deactivateUI"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->publicAPI(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->isUIActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const-string v1, "Offers"

    const-string v2, "Offer UI is not active"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->publicAPI(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 129
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->deactivateUI(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 188
    const-string v1, "Offers"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->publicAPI(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 201
    const-string v1, "Offers"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->publicAPI(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    const-string v1, "Offers"

    const-string v2, "onRestoreInstanceState"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->publicAPI(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_0
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->onRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 213
    const-string v1, "Offers"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->publicAPI(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    const-string v1, "Offers"

    const-string v2, "onSaveInstanceState"

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->publicAPI(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/chillingo/liboffers/OfferSessionImpl;->getSession()Lcom/chillingo/liboffers/session/OfferPrivateSession;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
