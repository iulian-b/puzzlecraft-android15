.class public Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;
.super Lcom/fusepowered/al/sdk/AppLovinSdk;


# static fields
.field public static final FULL_VERSION:Ljava/lang/String; = "5.4.2"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/fusepowered/al/sdk/AppLovinSdkSettings;

.field private c:Landroid/content/Context;

.field private d:Lcom/fusepowered/al/sdk/AppLovinLogger;

.field private e:Lcom/fusepowered/al/impl/sdk/bl;

.field private f:Lcom/fusepowered/al/impl/sdk/bc;

.field private g:Lcom/fusepowered/al/impl/sdk/m;

.field private h:Lcom/fusepowered/al/impl/sdk/be;

.field private i:Lcom/fusepowered/al/impl/sdk/t;

.field private j:Lcom/fusepowered/al/impl/sdk/k;

.field private k:Lcom/fusepowered/al/impl/sdk/d;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/fusepowered/al/sdk/AppLovinSdk;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->l:Z

    iput-boolean v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->m:Z

    iput-boolean v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->n:Z

    iput-boolean v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->o:Z

    iput-boolean v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->p:Z

    return-void
.end method

.method private static g()Z
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/fusepowered/al/impl/sdk/bl;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->e:Lcom/fusepowered/al/impl/sdk/bl;

    return-object v0
.end method

.method a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->f:Lcom/fusepowered/al/impl/sdk/bc;

    invoke-virtual {v0, p1}, Lcom/fusepowered/al/impl/sdk/bc;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->l:Z

    iput-boolean p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->n:Z

    return-void
.end method

.method b()Lcom/fusepowered/al/impl/sdk/be;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->h:Lcom/fusepowered/al/impl/sdk/be;

    return-object v0
.end method

.method c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->l:Z

    return v0
.end method

.method d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->n:Z

    return v0
.end method

.method e()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->l:Z

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->e:Lcom/fusepowered/al/impl/sdk/bl;

    new-instance v1, Lcom/fusepowered/al/impl/sdk/bk;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/impl/sdk/bk;-><init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/al/impl/sdk/bl;->a(Lcom/fusepowered/al/impl/sdk/bk;J)V

    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->f:Lcom/fusepowered/al/impl/sdk/bc;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/bc;->d()V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->f:Lcom/fusepowered/al/impl/sdk/bc;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/bc;->b()V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->h:Lcom/fusepowered/al/impl/sdk/be;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/be;->a()V

    return-void
.end method

.method public getAdService()Lcom/fusepowered/al/sdk/AppLovinAdService;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->k:Lcom/fusepowered/al/impl/sdk/d;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getConnectionManager()Lcom/fusepowered/al/impl/sdk/m;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->g:Lcom/fusepowered/al/impl/sdk/m;

    return-object v0
.end method

.method public getFileManager()Lcom/fusepowered/al/impl/sdk/t;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->i:Lcom/fusepowered/al/impl/sdk/t;

    return-object v0
.end method

.method public getLogger()Lcom/fusepowered/al/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->d:Lcom/fusepowered/al/sdk/AppLovinLogger;

    return-object v0
.end method

.method public getSdkKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Lcom/fusepowered/al/sdk/AppLovinSdkSettings;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->b:Lcom/fusepowered/al/sdk/AppLovinSdkSettings;

    return-object v0
.end method

.method public getSettingsManager()Lcom/fusepowered/al/impl/sdk/bc;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->f:Lcom/fusepowered/al/impl/sdk/bc;

    return-object v0
.end method

.method public getTargetingData()Lcom/fusepowered/al/sdk/AppLovinTargetingData;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->j:Lcom/fusepowered/al/impl/sdk/k;

    return-object v0
.end method

.method public hasCriticalErrors()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initialize(Ljava/lang/String;Lcom/fusepowered/al/sdk/AppLovinSdkSettings;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->b:Lcom/fusepowered/al/sdk/AppLovinSdkSettings;

    iput-object p3, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->c:Landroid/content/Context;

    :try_start_0
    new-instance v2, Lcom/fusepowered/al/impl/sdk/i;

    invoke-direct {v2}, Lcom/fusepowered/al/impl/sdk/i;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->d:Lcom/fusepowered/al/sdk/AppLovinLogger;

    new-instance v1, Lcom/fusepowered/al/impl/sdk/bc;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/impl/sdk/bc;-><init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->f:Lcom/fusepowered/al/impl/sdk/bc;

    new-instance v1, Lcom/fusepowered/al/impl/sdk/bl;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/impl/sdk/bl;-><init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->e:Lcom/fusepowered/al/impl/sdk/bl;

    new-instance v1, Lcom/fusepowered/al/impl/sdk/m;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/impl/sdk/m;-><init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->g:Lcom/fusepowered/al/impl/sdk/m;

    new-instance v1, Lcom/fusepowered/al/impl/sdk/be;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/impl/sdk/be;-><init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->h:Lcom/fusepowered/al/impl/sdk/be;

    new-instance v1, Lcom/fusepowered/al/impl/sdk/t;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/impl/sdk/t;-><init>(Lcom/fusepowered/al/sdk/AppLovinSdk;)V

    iput-object v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->i:Lcom/fusepowered/al/impl/sdk/t;

    new-instance v1, Lcom/fusepowered/al/impl/sdk/d;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/impl/sdk/d;-><init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->k:Lcom/fusepowered/al/impl/sdk/d;

    new-instance v1, Lcom/fusepowered/al/impl/sdk/k;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/impl/sdk/k;-><init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->j:Lcom/fusepowered/al/impl/sdk/k;

    invoke-static {}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->o:Z

    const-string v1, "AppLovinSdk"

    const-string v3, "Unable to initalize AppLovin SDK: Android SDK version has to be at least level 8"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->p:Z

    const-string v1, "AppLovinSdk"

    const-string v3, "Unable to find AppLovin SDK key. Please add     meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AppLovinSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called with an invalid SDK key from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->hasCriticalErrors()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->f:Lcom/fusepowered/al/impl/sdk/bc;

    invoke-virtual {v2, v1}, Lcom/fusepowered/al/impl/sdk/i;->a(Lcom/fusepowered/al/impl/sdk/bc;)V

    instance-of v1, p2, Lcom/fusepowered/al/impl/sdk/ar;

    if-eqz v1, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/fusepowered/al/impl/sdk/ar;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/ar;->a()Lcom/fusepowered/al/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/fusepowered/al/impl/sdk/i;->a(Lcom/fusepowered/al/impl/sdk/j;)V

    :cond_3
    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->f:Lcom/fusepowered/al/impl/sdk/bc;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bc;->c()V

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->f:Lcom/fusepowered/al/impl/sdk/bc;

    sget-object v2, Lcom/fusepowered/al/impl/sdk/az;->b:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v1, v2}, Lcom/fusepowered/al/impl/sdk/bc;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->f:Lcom/fusepowered/al/impl/sdk/bc;

    invoke-virtual {v1, p2}, Lcom/fusepowered/al/impl/sdk/bc;->a(Lcom/fusepowered/al/sdk/AppLovinSdkSettings;)V

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->f:Lcom/fusepowered/al/impl/sdk/bc;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bc;->b()V

    :cond_4
    invoke-virtual {p0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->e()V

    :goto_0
    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppLovinSdk"

    const-string v3, "Failed to load AppLovin SDK, ad serving will be disabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v6}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Z)V

    goto :goto_0
.end method

.method public initializeSdk()V
    .locals 0

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->m:Z

    return v0
.end method

.method public setPluginVersion(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No version specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->f:Lcom/fusepowered/al/impl/sdk/bc;

    sget-object v1, Lcom/fusepowered/al/impl/sdk/az;->F:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v1, p1}, Lcom/fusepowered/al/impl/sdk/bc;->a(Lcom/fusepowered/al/impl/sdk/bb;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->f:Lcom/fusepowered/al/impl/sdk/bc;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/bc;->b()V

    return-void
.end method
