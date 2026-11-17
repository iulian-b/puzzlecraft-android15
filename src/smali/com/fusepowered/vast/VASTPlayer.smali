.class public Lcom/fusepowered/vast/VASTPlayer;
.super Ljava/lang/Object;
.source "VASTPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;
    }
.end annotation


# static fields
.field public static final ERROR_EXCEEDED_WRAPPER_LIMIT:I = 0x12e

.field public static final ERROR_FILE_NOT_FOUND:I = 0x191

.field public static final ERROR_GENERAL_LINEAR:I = 0x190

.field public static final ERROR_GENERAL_WRAPPER:I = 0x12c

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NO_COMPATIBLE_MEDIA_FILE:I = 0x193

.field public static final ERROR_NO_NETWORK:I = 0x1

.field public static final ERROR_NO_VAST_IN_WRAPPER:I = 0x12f

.field public static final ERROR_SCHEMA_VALIDATION:I = 0x65

.field public static final ERROR_UNDEFINED:I = 0x384

.field public static final ERROR_UNSUPPORTED_VERSION:I = 0x66

.field public static final ERROR_VIDEO_PLAYBACK:I = 0x195

.field public static final ERROR_VIDEO_TIMEOUT:I = 0x192

.field public static final ERROR_WRAPPER_TIMEOUT:I = 0x12d

.field public static final ERROR_XML_PARSE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "VASTPlayer"

.field public static final VERSION:Ljava/lang/String; = "1.3"

.field public static currentPlayer:Lcom/fusepowered/vast/VASTPlayer;


# instance fields
.field private context:Landroid/content/Context;

.field private isRewarded:Z

.field public listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

.field private loaded:Z

.field private maxVideoFileSize:Ljava/lang/String;

.field private postroll:Z

.field private shouldValidateSchema:Z

.field private skipOffset:J

.field private vastModel:Lcom/fusepowered/vast/model/VASTModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;ZJZLjava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;
    .param p3, "postroll"    # Z
    .param p4, "skipOffset"    # J
    .param p6, "isRewarded"    # Z
    .param p7, "maxVideoFileSize"    # Ljava/lang/String;
    .param p8, "shouldValidateSchema"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/vast/VASTPlayer;->loaded:Z

    .line 78
    iput-object p1, p0, Lcom/fusepowered/vast/VASTPlayer;->context:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    .line 80
    iput-boolean p3, p0, Lcom/fusepowered/vast/VASTPlayer;->postroll:Z

    .line 81
    iput-wide p4, p0, Lcom/fusepowered/vast/VASTPlayer;->skipOffset:J

    .line 82
    iput-boolean p6, p0, Lcom/fusepowered/vast/VASTPlayer;->isRewarded:Z

    .line 83
    iput-object p7, p0, Lcom/fusepowered/vast/VASTPlayer;->maxVideoFileSize:Ljava/lang/String;

    .line 84
    iput-boolean p8, p0, Lcom/fusepowered/vast/VASTPlayer;->shouldValidateSchema:Z

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/vast/VASTPlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/vast/VASTPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/fusepowered/vast/VASTPlayer;->sendError(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/vast/VASTPlayer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/vast/VASTPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fusepowered/vast/VASTPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/vast/VASTPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/vast/VASTPlayer;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/fusepowered/vast/VASTPlayer;->shouldValidateSchema:Z

    return v0
.end method

.method static synthetic access$302(Lcom/fusepowered/vast/VASTPlayer;Lcom/fusepowered/vast/model/VASTModel;)Lcom/fusepowered/vast/model/VASTModel;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/vast/VASTPlayer;
    .param p1, "x1"    # Lcom/fusepowered/vast/model/VASTModel;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fusepowered/vast/VASTPlayer;->vastModel:Lcom/fusepowered/vast/model/VASTModel;

    return-object p1
.end method

.method private sendError(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/fusepowered/vast/VASTPlayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/vast/VASTPlayer$3;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/vast/VASTPlayer$3;-><init>(Lcom/fusepowered/vast/VASTPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fusepowered/vast/VASTPlayer;->maxVideoFileSize:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x49742400    # 1000000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/fusepowered/vast/VASTPlayer;->loaded:Z

    return v0
.end method

.method public loadVastResponseViaURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/vast/VASTPlayer;->vastModel:Lcom/fusepowered/vast/model/VASTModel;

    .line 104
    iget-object v0, p0, Lcom/fusepowered/vast/VASTPlayer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/vast/util/NetworkTools;->connectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/vast/VASTPlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/vast/VASTPlayer$1;-><init>(Lcom/fusepowered/vast/VASTPlayer;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fusepowered/vast/VASTPlayer;->sendError(I)V

    goto :goto_0
.end method

.method public loadVastResponseViaXML(Ljava/lang/String;)V
    .locals 2
    .param p1, "xmlData"    # Ljava/lang/String;

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/vast/VASTPlayer;->vastModel:Lcom/fusepowered/vast/model/VASTModel;

    .line 140
    iget-object v0, p0, Lcom/fusepowered/vast/VASTPlayer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/vast/util/NetworkTools;->connectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/vast/VASTPlayer$2;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/vast/VASTPlayer$2;-><init>(Lcom/fusepowered/vast/VASTPlayer;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fusepowered/vast/VASTPlayer;->sendError(I)V

    goto :goto_0
.end method

.method public play()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/fusepowered/vast/VASTPlayer;->vastModel:Lcom/fusepowered/vast/model/VASTModel;

    if-eqz v1, :cond_0

    .line 162
    sput-object p0, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    .line 163
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/vast/VASTPlayer;->context:Landroid/content/Context;

    const-class v2, Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v0, "vastPlayerIntent":Landroid/content/Intent;
    const-string v1, "com.nexage.android.vast.player.vastModel"

    iget-object v2, p0, Lcom/fusepowered/vast/VASTPlayer;->vastModel:Lcom/fusepowered/vast/model/VASTModel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 165
    const-string v1, "postroll"

    iget-boolean v2, p0, Lcom/fusepowered/vast/VASTPlayer;->postroll:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v1, "skipOffset"

    iget-wide v2, p0, Lcom/fusepowered/vast/VASTPlayer;->skipOffset:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    const-string v1, "rewarded"

    iget-boolean v2, p0, Lcom/fusepowered/vast/VASTPlayer;->isRewarded:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/fusepowered/vast/VASTPlayer;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 172
    .end local v0    # "vastPlayerIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v1, "VASTPlayer"

    const-string v2, "vastModel is null; nothing to play"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLoaded(Z)V
    .locals 1
    .param p1, "loaded"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/fusepowered/vast/VASTPlayer;->loaded:Z

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastReady()V

    .line 92
    :cond_0
    return-void
.end method
