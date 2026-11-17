.class public Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;
.super Ljava/lang/Object;
.source "LaunchBrowserCommand.java"

# interfaces
.implements Lcom/fusepowered/as/controller/command/Command;


# instance fields
.field private context:Landroid/content/Context;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;->context:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;->url:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 22
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 23
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    iget-object v1, p0, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception caught while trying to launch a browser"

    invoke-static {v1, v2, v0}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
