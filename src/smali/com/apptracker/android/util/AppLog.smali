.class public Lcom/apptracker/android/util/AppLog;
.super Ljava/lang/Object;
.source "q"


# static fields
.field private static synthetic h:Z

.field private static synthetic k:Ljava/lang/String;

.field private static synthetic m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apptracker/android/util/AppLog;->h:Z

    .line 150
    const-string v0, ""

    sput-object v0, Lcom/apptracker/android/util/AppLog;->k:Ljava/lang/String;

    .line 169
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apptracker/android/util/AppLog;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-boolean v0, Lcom/apptracker/android/util/AppLog;->h:Z

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptracker/android/util/AppLog;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 158
    sget-boolean v0, Lcom/apptracker/android/util/AppLog;->h:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptracker/android/util/AppLog;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    return-void
.end method

.method public static enableLog(Z)V
    .locals 3
    .param p0, "arg0"    # Z

    .prologue
    .line 229
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0007!\u0003-\u000e*. \u0005uB"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sput-boolean p0, Lcom/apptracker/android/util/AppLog;->h:Z

    .line 130
    return-void
.end method

.method public static enableUserLog(Z)V
    .locals 0
    .param p0, "arg0"    # Z

    .prologue
    .line 48
    sput-boolean p0, Lcom/apptracker/android/util/AppLog;->m:Z

    .line 32
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-boolean v0, Lcom/apptracker/android/util/AppLog;->h:Z

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptracker/android/util/AppLog;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return-void
.end method

.method public static printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Exception;

    .prologue
    .line 8
    sget-boolean v0, Lcom/apptracker/android/util/AppLog;->h:Z

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 244
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    return-void
.end method

.method public static setPreText(Ljava/lang/String;)V
    .locals 0
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 210
    sput-object p0, Lcom/apptracker/android/util/AppLog;->k:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public static timeTracK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-boolean v0, Lcom/apptracker/android/util/AppLog;->h:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 67
    const-string v1, "Q\u000bT\\\u0003BJ"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "$:\u000c,\u0016&\r!BbB"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0003\u0011mXTT\u0019\u000c\u0019"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    return-void
.end method

.method public static ue(Ljava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-boolean v0, Lcom/apptracker/android/util/AppLog;->m:Z

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "AppTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method public static ui(Ljava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 243
    sget-boolean v0, Lcom/apptracker/android/util/AppLog;->m:Z

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "AppTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    return-void
.end method

.method public static uw(Ljava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 239
    sget-boolean v0, Lcom/apptracker/android/util/AppLog;->m:Z

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "AppTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 10
    sget-boolean v0, Lcom/apptracker/android/util/AppLog;->h:Z

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptracker/android/util/AppLog;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 241
    sget-boolean v0, Lcom/apptracker/android/util/AppLog;->h:Z

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptracker/android/util/AppLog;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    return-void
.end method
