.class public abstract Lcom/fusepowered/sa/android/publish/c/c;
.super Lcom/fusepowered/sa/android/publish/c/d;


# instance fields
.field private g:I

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/fusepowered/sa/android/publish/c/d;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->g:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->h:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->j:Ljava/util/ArrayList;

    return-void
.end method

.method private b()Z
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->g:I

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/c/c;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/a;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/a;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/c;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/sa/android/publish/a;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&isShown="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/c;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/sa/android/publish/a;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/a;->c()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&appPresence="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/c;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/sa/android/publish/a;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/a;->d()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/a;->a(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/c/c;->e()Lcom/fusepowered/sa/android/publish/model/GetAdRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/c/c;->h:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/c/c;->h:Ljava/util/Set;

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/c/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v3, p0, Lcom/fusepowered/sa/android/publish/c/c;->g:I

    if-lez v3, :cond_1

    invoke-virtual {v2, v0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setEngInclude(Z)V

    :cond_1
    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/c/c;->h:Ljava/util/Set;

    invoke-virtual {v2, v3}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setPackagesExclude(Ljava/util/Set;)V

    iget v3, p0, Lcom/fusepowered/sa/android/publish/c/c;->g:I

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setEngInclude(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->a:Landroid/content/Context;

    sget-object v3, Lcom/fusepowered/sa/android/publish/b$a;->b:Lcom/fusepowered/sa/android/publish/b$a;

    invoke-static {v3}, Lcom/fusepowered/sa/android/publish/b;->a(Lcom/fusepowered/sa/android/publish/b$a;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-class v5, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;

    invoke-static {v0, v3, v2, v4, v5}, Lcom/fusepowered/sa/android/publish/e/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/sa/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/Class;)Lcom/fusepowered/sa/android/publish/model/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;
    :try_end_0
    .catch Lcom/fusepowered/sa/android/publish/f/l; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "AppPresence"

    const/4 v3, 0x6

    const-string v4, "Unable to handle GetAdsSetService command!!!!"

    invoke-static {v2, v3, v4, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/f/l;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->f:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/model/AdDetails;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/model/AdDetails;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "AppPresence"

    const-string v1, "in isAppPresent"

    invoke-static {v0, v13, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/AdDetails;

    new-instance v10, Lcom/fusepowered/sa/android/publish/a;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v5

    iget v11, p0, Lcom/fusepowered/sa/android/publish/c/c;->g:I

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getMinAppVersion()I

    move-result v12

    invoke-direct {v10, v3, v5, v11, v12}, Lcom/fusepowered/sa/android/publish/a;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v3

    const-string v5, "!"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v5, v4

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v11, p0, Lcom/fusepowered/sa/android/publish/c/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getMinAppVersion()I

    move-result v12

    invoke-static {v11, v3, v12}, Lcom/fusepowered/sa/android/publish/c/c;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    if-nez v11, :cond_5

    if-eqz v5, :cond_5

    :cond_1
    move v3, v4

    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {v10, v11}, Lcom/fusepowered/sa/android/publish/a;->b(Z)V

    invoke-virtual {v10, v2}, Lcom/fusepowered/sa/android/publish/a;->a(Z)V

    if-nez v5, :cond_2

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/c;->i:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/c;->h:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "AppPresence"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App Presence:["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v13, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v4

    :goto_4
    move v1, v0

    goto/16 :goto_0

    :cond_3
    move v5, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_3

    :cond_6
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/c/c;->i:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "AppPresence"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App Not Presence:["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v13, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v1

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o;->c(Landroid/content/Context;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/c/a;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/c/c;->i:Ljava/util/List;

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/sa/android/publish/c/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/c/a;->a()V

    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_9

    iget v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->g:I

    if-lez v0, :cond_b

    :cond_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v7, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_5
    if-ge v2, v1, :cond_a

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/a;

    invoke-virtual {v0, v4}, Lcom/fusepowered/sa/android/publish/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->i:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    return-object v6
.end method

.method protected abstract a(Lcom/fusepowered/sa/android/publish/Ad;)V
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/fusepowered/sa/android/publish/c/d;->a(Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->b:Lcom/fusepowered/sa/android/publish/Ad;

    check-cast v0, Lcom/fusepowered/sa/android/publish/a/f;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/c/c;->a(Lcom/fusepowered/sa/android/publish/Ad;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/c;->b:Lcom/fusepowered/sa/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x6

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;

    if-nez p1, :cond_1

    const-string v0, "Empty Response"

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->f:Ljava/lang/String;

    const-string v0, "AppPresence"

    const-string v1, "Error Empty Response"

    invoke-static {v0, v4, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;->isValidResponse()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/c;->f:Ljava/lang/String;

    const-string v0, "AppPresence"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error msg = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/c/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/c;->b:Lcom/fusepowered/sa/android/publish/Ad;

    check-cast v1, Lcom/fusepowered/sa/android/publish/a/f;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fusepowered/sa/android/publish/c/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/c/c;->f()V

    invoke-virtual {v1, v3}, Lcom/fusepowered/sa/android/publish/a/f;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;->getAdInfoOverride()Lcom/fusepowered/sa/android/publish/adinformation/b;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/fusepowered/sa/android/publish/a/f;->setAdInfoOverride(Lcom/fusepowered/sa/android/publish/adinformation/b;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/c;->b:Lcom/fusepowered/sa/android/publish/Ad;

    check-cast v1, Lcom/fusepowered/sa/android/publish/a/f;

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/c/c;->i:Ljava/util/List;

    iput-object v4, v1, Lcom/fusepowered/sa/android/publish/a/f;->a:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    const-string v1, "Empty Response"

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/c/c;->f:Ljava/lang/String;

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/fusepowered/sa/android/publish/c/c;->g:I

    if-nez v1, :cond_0

    const-string v0, "AppPresence"

    const/4 v1, 0x3

    const-string v2, "Packages exists - another request"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/c/c;->b()Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method
