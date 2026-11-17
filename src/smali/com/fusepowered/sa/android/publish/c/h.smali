.class public Lcom/fusepowered/sa/android/publish/c/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

.field private c:Lcom/fusepowered/sa/android/publish/model/MetaData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/h;->c:Lcom/fusepowered/sa/android/publish/model/MetaData;

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/c/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/c/h;->b:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/sa/android/publish/c/h$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/c/h$1;-><init>(Lcom/fusepowered/sa/android/publish/c/h;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/h;->c:Lcom/fusepowered/sa/android/publish/model/MetaData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/h;->c:Lcom/fusepowered/sa/android/publish/model/MetaData;

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/model/MetaData;->update(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/MetaData;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->failedLoading()V

    goto :goto_0
.end method

.method protected b()Ljava/lang/Boolean;
    .locals 5

    const/4 v1, 0x3

    const-string v0, "Loading MetaData"

    invoke-static {v1, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/MetaDataRequest;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/MetaDataRequest;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/c/h;->b:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/model/MetaDataRequest;->fillApplicationDetails(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "Networking MetaData"

    invoke-static {v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/h;->a:Landroid/content/Context;

    sget-object v2, Lcom/fusepowered/sa/android/publish/b$a;->c:Lcom/fusepowered/sa/android/publish/b$a;

    invoke-static {v2}, Lcom/fusepowered/sa/android/publish/b;->a(Lcom/fusepowered/sa/android/publish/b$a;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-class v4, Lcom/fusepowered/sa/android/publish/model/MetaData;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/fusepowered/sa/android/publish/e/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/sa/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/Class;)Lcom/fusepowered/sa/android/publish/model/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/MetaData;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/h;->c:Lcom/fusepowered/sa/android/publish/model/MetaData;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/h;->c:Lcom/fusepowered/sa/android/publish/model/MetaData;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/f/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/model/MetaData;->setVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fusepowered/sa/android/publish/f/l; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    const-string v2, "Unable to handle GetMetaData command!!!!"

    invoke-static {v1, v2, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
