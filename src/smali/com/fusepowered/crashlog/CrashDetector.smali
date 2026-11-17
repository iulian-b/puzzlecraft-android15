.class public Lcom/fusepowered/crashlog/CrashDetector;
.super Ljava/lang/Object;
.source "CrashDetector.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCrashHandler:Lcom/fusepowered/crashlog/handlers/CrashHandler;

.field private mCrashSender:Lcom/fusepowered/crashlog/senders/CrashSender;

.field mExternalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mHasStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0, v0, p1}, Lcom/fusepowered/crashlog/CrashDetector;-><init>(Lcom/fusepowered/crashlog/handlers/CrashHandler;Lcom/fusepowered/crashlog/senders/CrashSender;Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Lcom/fusepowered/crashlog/handlers/CrashHandler;Lcom/fusepowered/crashlog/senders/CrashSender;Landroid/content/Context;)V
    .locals 2
    .param p1, "crashHandler"    # Lcom/fusepowered/crashlog/handlers/CrashHandler;
    .param p2, "crashSender"    # Lcom/fusepowered/crashlog/senders/CrashSender;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mExternalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mHasStarted:Z

    .line 43
    if-nez p3, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p3, p0, Lcom/fusepowered/crashlog/CrashDetector;->mContext:Landroid/content/Context;

    .line 49
    if-eqz p1, :cond_1

    .line 50
    iput-object p1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashHandler:Lcom/fusepowered/crashlog/handlers/CrashHandler;

    .line 55
    :goto_0
    if-eqz p2, :cond_2

    .line 56
    iput-object p2, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashSender:Lcom/fusepowered/crashlog/senders/CrashSender;

    .line 60
    :goto_1
    return-void

    .line 52
    :cond_1
    new-instance v0, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;

    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashHandler:Lcom/fusepowered/crashlog/handlers/CrashHandler;

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Lcom/fusepowered/crashlog/senders/FuseCrashSender;

    invoke-direct {v0}, Lcom/fusepowered/crashlog/senders/FuseCrashSender;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashSender:Lcom/fusepowered/crashlog/senders/CrashSender;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/fusepowered/crashlog/CrashDetector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/crashlog/CrashDetector;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private formattedStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 180
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 181
    .local v2, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 183
    .local v1, "printWriter":Ljava/io/PrintWriter;
    move-object v0, p1

    .line 184
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private gatherCrashData(Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/fusepowered/crashlog/CrashData;
    .locals 6
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "threadName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "threadState":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/fusepowered/crashlog/CrashDetector;->formattedStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "stackTrace":Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/crashlog/CrashData;

    invoke-direct {v0}, Lcom/fusepowered/crashlog/CrashData;-><init>()V

    .line 164
    .local v0, "crashData":Lcom/fusepowered/crashlog/CrashData;
    invoke-virtual {v0, v1}, Lcom/fusepowered/crashlog/CrashData;->setStackTrace(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, v2}, Lcom/fusepowered/crashlog/CrashData;->setCrashedThreadName(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v3}, Lcom/fusepowered/crashlog/CrashData;->setCrashedThreadState(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/fusepowered/crashlog/CrashData;->setCrashTime(J)V

    .line 168
    invoke-static {}, Lcom/fusepowered/log/FuseLog;->getLogHistory()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fusepowered/crashlog/CrashData;->setLogs([Ljava/lang/String;)V

    .line 169
    return-object v0
.end method

.method private registerAsUncaughtExceptionHandler()V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 84
    .local v0, "currentExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_0

    .line 85
    iput-object v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mExternalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 88
    :cond_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mHasStarted:Z

    .line 90
    const-string v1, "CrashDetector"

    const-string v2, "Crash Detection enabled"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method


# virtual methods
.method public sendCachedCrashes()V
    .locals 4

    .prologue
    .line 98
    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->getCachedCrashes(Landroid/content/Context;)[Lcom/fusepowered/crashlog/CrashData;

    move-result-object v0

    .line 100
    .local v0, "cachedCrashes":[Lcom/fusepowered/crashlog/CrashData;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 101
    :cond_0
    const-string v1, "CrashDetector"

    const-string v2, "No cached crashes waiting to be sent"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v1, "CrashDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cached crashes.  Attempting to report them now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashSender:Lcom/fusepowered/crashlog/senders/CrashSender;

    iget-object v2, p0, Lcom/fusepowered/crashlog/CrashDetector;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/fusepowered/crashlog/CrashDetector$1;

    invoke-direct {v3, p0}, Lcom/fusepowered/crashlog/CrashDetector$1;-><init>(Lcom/fusepowered/crashlog/CrashDetector;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/fusepowered/crashlog/senders/CrashSender;->reportCrashs([Lcom/fusepowered/crashlog/CrashData;Landroid/content/Context;Lcom/fusepowered/crashlog/senders/CrashSender$CrashSenderCallback;)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "CrashDetector"

    const-string v1, "Start called but crash detection has already been enabled."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/crashlog/CrashDetector;->registerAsUncaughtExceptionHandler()V

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 132
    const-string v1, "CrashDetector"

    const-string v2, "Crash detected.  Attempting to record it."

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashHandler:Lcom/fusepowered/crashlog/handlers/CrashHandler;

    if-eqz v1, :cond_0

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/crashlog/CrashDetector;->gatherCrashData(Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/fusepowered/crashlog/CrashData;

    move-result-object v0

    .line 138
    .local v0, "crashData":Lcom/fusepowered/crashlog/CrashData;
    const-string v1, "CrashDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gathered crash data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fusepowered/crashlog/CrashData;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashHandler:Lcom/fusepowered/crashlog/handlers/CrashHandler;

    iget-object v2, p0, Lcom/fusepowered/crashlog/CrashDetector;->mContext:Landroid/content/Context;

    invoke-interface {v1, v0, v2}, Lcom/fusepowered/crashlog/handlers/CrashHandler;->handleCrash(Lcom/fusepowered/crashlog/CrashData;Landroid/content/Context;)Z

    .line 143
    .end local v0    # "crashData":Lcom/fusepowered/crashlog/CrashData;
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mExternalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 144
    const-string v1, "CrashDetector"

    const-string v2, "Forwarding exception to external exception handler"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mExternalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 148
    :cond_1
    return-void
.end method
