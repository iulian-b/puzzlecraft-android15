.class public Lcom/fusepowered/push/FuseRecordGCMResponse;
.super Landroid/app/Activity;
.source "FuseRecordGCMResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const-string v5, "FuseRecordGCMResponse"

    const-string v6, "Someone clicked on our Notification"

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/fusepowered/push/FuseRecordGCMResponse;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.acme.URI"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "strIntent":Ljava/lang/String;
    const-string v5, "GCMData"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/fusepowered/push/FuseRecordGCMResponse;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    .local v0, "appdata":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 26
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    const-string v5, "gcmRecord"

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 27
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v3, "i":Landroid/content/Intent;
    const/high16 v5, 0x400000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v3}, Lcom/fusepowered/push/FuseRecordGCMResponse;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v3    # "i":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/push/FuseRecordGCMResponse;->finish()V

    .line 37
    return-void

    .line 33
    :catch_0
    move-exception v2

    .line 34
    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
