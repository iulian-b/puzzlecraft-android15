.class public Lcom/fusepowered/log/FuseLog;
.super Ljava/lang/Object;
.source "FuseLog.java"


# static fields
.field private static INTERNAL:Z

.field public static LOG:Z

.field private static buffer:Lcom/fusepowered/log/LogBuffer;

.field public static debug:Z

.field public static veryDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/fusepowered/log/LogBuffer;

    const/16 v1, 0x64

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/log/LogBuffer;-><init>(II)V

    sput-object v0, Lcom/fusepowered/log/FuseLog;->buffer:Lcom/fusepowered/log/LogBuffer;

    .line 13
    sput-boolean v3, Lcom/fusepowered/log/FuseLog;->debug:Z

    .line 14
    sput-boolean v3, Lcom/fusepowered/log/FuseLog;->veryDebug:Z

    .line 15
    sput-boolean v3, Lcom/fusepowered/log/FuseLog;->INTERNAL:Z

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/log/FuseLog;->LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TOAST(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-boolean v0, Lcom/fusepowered/log/FuseLog;->INTERNAL:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    :cond_0
    return-void
.end method

.method public static clearBuffer()V
    .locals 3

    .prologue
    .line 25
    sget-boolean v0, Lcom/fusepowered/log/FuseLog;->INTERNAL:Z

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/fusepowered/log/LogBuffer;

    const/16 v1, 0xc8

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/log/LogBuffer;-><init>(II)V

    sput-object v0, Lcom/fusepowered/log/FuseLog;->buffer:Lcom/fusepowered/log/LogBuffer;

    .line 28
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v0, Lcom/fusepowered/log/FuseLog;->buffer:Lcom/fusepowered/log/LogBuffer;

    const-string v1, "d"

    invoke-virtual {v0, v1, p0, p1}, Lcom/fusepowered/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-boolean v0, Lcom/fusepowered/log/FuseLog;->veryDebug:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v0, Lcom/fusepowered/log/FuseLog;->buffer:Lcom/fusepowered/log/LogBuffer;

    const-string v1, "e"

    invoke-virtual {v0, v1, p0, p1}, Lcom/fusepowered/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    sget-object v0, Lcom/fusepowered/log/FuseLog;->buffer:Lcom/fusepowered/log/LogBuffer;

    const-string v1, "e"

    invoke-virtual {v0, v1, p0, p1}, Lcom/fusepowered/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    return-void
.end method

.method public static enableInternalLogging()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 18
    new-instance v0, Lcom/fusepowered/log/LogBuffer;

    const/16 v1, 0xc8

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/log/LogBuffer;-><init>(II)V

    sput-object v0, Lcom/fusepowered/log/FuseLog;->buffer:Lcom/fusepowered/log/LogBuffer;

    .line 19
    sput-boolean v3, Lcom/fusepowered/log/FuseLog;->debug:Z

    .line 20
    sput-boolean v3, Lcom/fusepowered/log/FuseLog;->veryDebug:Z

    .line 21
    sput-boolean v3, Lcom/fusepowered/log/FuseLog;->INTERNAL:Z

    .line 22
    return-void
.end method

.method public static getLogHistory()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/fusepowered/log/FuseLog;->buffer:Lcom/fusepowered/log/LogBuffer;

    invoke-virtual {v0}, Lcom/fusepowered/log/LogBuffer;->getLog()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v0, Lcom/fusepowered/log/FuseLog;->buffer:Lcom/fusepowered/log/LogBuffer;

    const-string v1, "i"

    invoke-virtual {v0, v1, p0, p1}, Lcom/fusepowered/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-boolean v0, Lcom/fusepowered/log/FuseLog;->debug:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void
.end method

.method public static internal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v0, Lcom/fusepowered/log/FuseLog;->buffer:Lcom/fusepowered/log/LogBuffer;

    const-string v1, "INTERNAL"

    invoke-virtual {v0, v1, p0, p1}, Lcom/fusepowered/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-boolean v0, Lcom/fusepowered/log/FuseLog;->INTERNAL:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTERNAL | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lcom/fusepowered/log/FuseLog;->buffer:Lcom/fusepowered/log/LogBuffer;

    const-string v1, "v"

    invoke-virtual {v0, v1, p0, p1}, Lcom/fusepowered/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-boolean v0, Lcom/fusepowered/log/FuseLog;->veryDebug:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v0, Lcom/fusepowered/log/FuseLog;->buffer:Lcom/fusepowered/log/LogBuffer;

    const-string v1, "w"

    invoke-virtual {v0, v1, p0, p1}, Lcom/fusepowered/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    sget-object v0, Lcom/fusepowered/log/FuseLog;->buffer:Lcom/fusepowered/log/LogBuffer;

    const-string v1, "w"

    invoke-virtual {v0, v1, p0, p1}, Lcom/fusepowered/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    return-void
.end method
