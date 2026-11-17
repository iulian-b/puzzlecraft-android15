.class public Lcom/apptracker/android/module/AppModuleActivity;
.super Landroid/app/Activity;
.source "fb"


# static fields
.field private static synthetic h:Lcom/apptracker/android/module/AppModuleController;

.field private static synthetic k:Lcom/apptracker/android/module/AppVideoModuleController;


# instance fields
.field protected d:Z

.field private synthetic m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppModuleActivity;->d:Z

    .line 202
    return-void
.end method

.method private synthetic G()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/apptracker/android/module/AppModuleActivity;->k:Lcom/apptracker/android/module/AppVideoModuleController;

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/apptracker/android/module/AppModuleActivity;->k:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-virtual {v0, p0}, Lcom/apptracker/android/module/AppVideoModuleController;->displayModuleInCurrentActity(Landroid/app/Activity;)Z

    .line 85
    :cond_0
    sget-object v0, Lcom/apptracker/android/module/AppModuleActivity;->h:Lcom/apptracker/android/module/AppModuleController;

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/apptracker/android/module/AppModuleActivity;->h:Lcom/apptracker/android/module/AppModuleController;

    invoke-virtual {v0, p0}, Lcom/apptracker/android/module/AppModuleController;->displayModuleInCurrentActivity(Landroid/app/Activity;)Z

    .line 41
    :cond_1
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Lcom/apptracker/android/module/AppModuleController;Lcom/apptracker/android/module/AppAd;)Z
    .locals 4
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Lcom/apptracker/android/module/AppModuleController;
    .param p2, "arg2"    # Lcom/apptracker/android/module/AppAd;

    .prologue
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 10
    :cond_0
    const-string v0, "APTr"

    const-string v1, "h/Y\u0012F;\\3L\u001eJ+@)@+PqZ+H-]\u001eJ+@)@+P\u007fN0]\u007fG*E3\t6G/\\+"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 183
    :cond_1
    sput-object p1, Lcom/apptracker/android/module/AppModuleActivity;->h:Lcom/apptracker/android/module/AppModuleController;

    .line 205
    const/4 v0, 0x0

    sput-object v0, Lcom/apptracker/android/module/AppModuleActivity;->k:Lcom/apptracker/android/module/AppVideoModuleController;

    .line 5
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/apptracker/android/module/AppModuleActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 124
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    const-string v2, "orientation"

    invoke-virtual {p2}, Lcom/apptracker/android/module/AppAd;->getOrientation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Lcom/apptracker/android/module/AppVideoModuleController;Lcom/apptracker/android/module/AppAd;)Z
    .locals 4
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Lcom/apptracker/android/module/AppVideoModuleController;
    .param p2, "arg2"    # Lcom/apptracker/android/module/AppAd;

    .prologue
    .line 70
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 98
    :cond_0
    const-string v0, "APTr"

    const-string v1, "h/Y\u0012F;\\3L\u001eJ+@)@+PqZ+H-]\u001eJ+@)@+P\u007fN0]\u007fG*E3\t6G/\\+"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 34
    :cond_1
    sput-object p1, Lcom/apptracker/android/module/AppModuleActivity;->k:Lcom/apptracker/android/module/AppVideoModuleController;

    .line 241
    const/4 v0, 0x0

    sput-object v0, Lcom/apptracker/android/module/AppModuleActivity;->h:Lcom/apptracker/android/module/AppModuleController;

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/apptracker/android/module/AppModuleActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 185
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    const-string v2, "orientation"

    invoke-virtual {p2}, Lcom/apptracker/android/module/AppAd;->getOrientation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "APTr"

    const-string v1, "#?\u0012\u0002\r+\u0017#\u0007\u000e\u0001;\u000b9\u000b;\u001ba\r! .\u0001$2=\u0007<\u0011*\u0006"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 227
    :cond_0
    sget-object v0, Lcom/apptracker/android/module/AppModuleActivity;->k:Lcom/apptracker/android/module/AppVideoModuleController;

    if-eqz v0, :cond_1

    .line 152
    sget-object v0, Lcom/apptracker/android/module/AppModuleActivity;->k:Lcom/apptracker/android/module/AppVideoModuleController;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/apptracker/android/module/AppVideoModuleController;->updateLayout(I)V

    .line 134
    :cond_1
    sget-object v0, Lcom/apptracker/android/module/AppModuleActivity;->h:Lcom/apptracker/android/module/AppModuleController;

    if-eqz v0, :cond_2

    .line 97
    sget-object v0, Lcom/apptracker/android/module/AppModuleActivity;->h:Lcom/apptracker/android/module/AppModuleController;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/apptracker/android/module/AppModuleController;->updateLayout(I)V

    .line 193
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 249
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppModuleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    sget-object v1, Lcom/apptracker/android/module/AppModuleActivity;->k:Lcom/apptracker/android/module/AppVideoModuleController;

    if-nez v1, :cond_1

    sget-object v1, Lcom/apptracker/android/module/AppModuleActivity;->h:Lcom/apptracker/android/module/AppModuleController;

    if-nez v1, :cond_1

    .line 244
    :cond_0
    const-string v0, "APTr"

    const-string v1, "\u000e\u0012?/ \u0006:\u000e*#,\u0016&\u0014&\u00166L \u000c\u000c\u0010*\u0003;\u0007o\u0005 \u0016o\u000c:\u000e#B&\u000c;\u0007!\u0016o\r=B!\u0017#\u000eo\u000f \u0006:\u000e*B,\r!\u0016=\r#\u000e*\u0010"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppModuleActivity;->finish()V

    .line 148
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0, v4}, Lcom/apptracker/android/module/AppModuleActivity;->requestWindowFeature(I)Z

    .line 243
    const-string v1, "orientation"

    invoke-virtual {p0}, Lcom/apptracker/android/module/AppModuleActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 160
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/apptracker/android/module/AppModuleActivity;->m:I

    .line 40
    iget v0, p0, Lcom/apptracker/android/module/AppModuleActivity;->m:I

    if-ne v0, v4, :cond_3

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v6, :cond_2

    .line 167
    invoke-virtual {p0, v5}, Lcom/apptracker/android/module/AppModuleActivity;->setRequestedOrientation(I)V

    .line 247
    :goto_1
    invoke-direct {p0}, Lcom/apptracker/android/module/AppModuleActivity;->G()V

    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/apptracker/android/module/AppModuleActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 77
    :cond_3
    iget v0, p0, Lcom/apptracker/android/module/AppModuleActivity;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v6, :cond_4

    .line 86
    invoke-virtual {p0, v4}, Lcom/apptracker/android/module/AppModuleActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 58
    :cond_4
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/apptracker/android/module/AppModuleActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 172
    :cond_5
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/apptracker/android/module/AppModuleActivity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 20
    sput-object v0, Lcom/apptracker/android/module/AppModuleActivity;->k:Lcom/apptracker/android/module/AppVideoModuleController;

    .line 82
    sput-object v0, Lcom/apptracker/android/module/AppModuleActivity;->h:Lcom/apptracker/android/module/AppModuleController;

    .line 258
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const-string v0, "APTr"

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 223
    const-string v1, "#?\u0012\u0002\r+\u0017#\u0007\u000e\u0001;\u000b9\u000b;\u001ba\r!2.\u0017<\u0007gK"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/apptracker/android/module/AppModuleActivity;->k:Lcom/apptracker/android/module/AppVideoModuleController;

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/apptracker/android/module/AppModuleActivity;->k:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->pause()V

    .line 137
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const-string v0, "APTr"

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 186
    const-string v1, "h/Y\u0012F;\\3L\u001eJ+@)@+PqF1{:Z*D:\u0001v"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "arg0"    # Z

    .prologue
    .line 250
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u001eY/d0M*E:h<]6_6]&\u00070G\u0008@1M0^\u0019F<\\,j7H1N:Me"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz p1, :cond_0

    .line 23
    sget-object v0, Lcom/apptracker/android/module/AppModuleActivity;->k:Lcom/apptracker/android/module/AppVideoModuleController;

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/apptracker/android/module/AppModuleActivity;->k:Lcom/apptracker/android/module/AppVideoModuleController;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppVideoModuleController;->resume()V

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 56
    return-void
.end method
