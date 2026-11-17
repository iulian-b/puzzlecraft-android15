.class public Lcom/chillingo/libterms/config/SharedData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/chillingo/libterms/config/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chillingo/libterms/config/SharedData;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/chillingo/libterms/config/SharedData;-><init>(Landroid/content/Context;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useTestFile"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/chillingo/libterms/config/SharedData;->b:Landroid/content/Context;

    .line 39
    iput-boolean p2, p0, Lcom/chillingo/libterms/config/SharedData;->c:Z

    .line 40
    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/chillingo/libterms/config/a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 54
    const-class v3, Lcom/chillingo/libterms/config/SharedData;

    monitor-enter v3

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 58
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/libterms/config/a;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 65
    if-eqz v2, :cond_0

    .line 67
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :cond_0
    :goto_0
    monitor-exit v3

    return-object v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    :try_start_3
    sget-object v2, Lcom/chillingo/libterms/config/SharedData;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 60
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 61
    :goto_1
    :try_start_4
    sget-object v2, Lcom/chillingo/libterms/config/SharedData;->a:Ljava/lang/String;

    const-string v4, "Shared data file not found"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 65
    if-eqz v0, :cond_2

    .line 67
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v1

    .line 70
    goto :goto_0

    .line 68
    :catch_2
    move-exception v0

    .line 69
    :try_start_6
    sget-object v2, Lcom/chillingo/libterms/config/SharedData;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    .line 70
    goto :goto_0

    .line 62
    :catch_3
    move-exception v0

    move-object v2, v1

    .line 63
    :goto_2
    :try_start_7
    sget-object v4, Lcom/chillingo/libterms/config/SharedData;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 65
    if-eqz v2, :cond_2

    .line 67
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v1

    .line 70
    goto :goto_0

    .line 68
    :catch_4
    move-exception v0

    .line 69
    :try_start_9
    sget-object v2, Lcom/chillingo/libterms/config/SharedData;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v0, v1

    .line 70
    goto :goto_0

    .line 65
    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_1

    .line 67
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 70
    :cond_1
    :goto_4
    :try_start_b
    throw v0

    .line 68
    :catch_5
    move-exception v1

    .line 69
    sget-object v2, Lcom/chillingo/libterms/config/SharedData;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 65
    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    .line 62
    :catch_6
    move-exception v0

    goto :goto_2

    .line 60
    :catch_7
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/chillingo/libterms/config/SharedData;->c:Z

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chillingo-SharedData-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Ljava/lang/String;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Ljava/lang/String;

    .line 49
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "Chillingo-SharedData"

    goto :goto_0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/chillingo/libterms/config/a;)V
    .locals 4

    .prologue
    .line 77
    const-class v3, Lcom/chillingo/libterms/config/SharedData;

    monitor-enter v3

    const/4 v2, 0x0

    .line 79
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 86
    if-eqz v1, :cond_0

    .line 88
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_3
    sget-object v1, Lcom/chillingo/libterms/config/SharedData;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 83
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 84
    :goto_1
    :try_start_4
    sget-object v2, Lcom/chillingo/libterms/config/SharedData;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 86
    if-eqz v1, :cond_0

    .line 88
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 89
    :catch_2
    move-exception v0

    .line 90
    :try_start_6
    sget-object v1, Lcom/chillingo/libterms/config/SharedData;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 86
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    .line 88
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 91
    :cond_1
    :goto_3
    :try_start_8
    throw v0

    .line 89
    :catch_3
    move-exception v1

    .line 90
    sget-object v2, Lcom/chillingo/libterms/config/SharedData;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 86
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 83
    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getAgeGateRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->i()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getAgeOfUserOnAccept()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->e()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCanPassUnderAge()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->j()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateLastCheckedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->g()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getHasAcceptedOnFirstRun()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->f()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getMillisSinceLastCheckedDate()J
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->g()Ljava/util/Date;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 177
    const-wide/16 v0, -0x1

    .line 179
    :goto_0
    return-wide v0

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method public getPreviousTermsComplianceLevel()Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->k()Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    move-result-object v0

    return-object v0
.end method

.method public getReacceptIsPending()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getResourcePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourcePackageNameOrDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->l()Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTermAcceptanceRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->h()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getVersionUserAccepted()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public loadStoredConfig()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/chillingo/libterms/config/SharedData;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/chillingo/libterms/config/a;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    .line 98
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/chillingo/libterms/config/a;

    invoke-direct {v0}, Lcom/chillingo/libterms/config/a;-><init>()V

    iput-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    .line 100
    invoke-virtual {p0}, Lcom/chillingo/libterms/config/SharedData;->setToDefaults()V

    .line 102
    :cond_0
    return-void
.end method

.method public saveStoredConfig()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/chillingo/libterms/config/SharedData;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-static {v0, v1, v2}, Lcom/chillingo/libterms/config/SharedData;->a(Landroid/content/Context;Ljava/lang/String;Lcom/chillingo/libterms/config/a;)V

    goto :goto_0
.end method

.method public setAgeGateRequired(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "ageGateRequired"    # Ljava/lang/Boolean;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->d(Ljava/lang/Boolean;)V

    .line 204
    return-void
.end method

.method public setAgeOfUserOnAccept(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "ageOfUserOnAccept"    # Ljava/lang/Integer;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->b(Ljava/lang/Integer;)V

    .line 159
    return-void
.end method

.method public setCanPassUnderAge(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "canPassUnderAge"    # Ljava/lang/Boolean;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->e(Ljava/lang/Boolean;)V

    .line 212
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->a(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public setDateLastCheckedDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "dateLastCheckedDate"    # Ljava/util/Date;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->a(Ljava/util/Date;)V

    .line 188
    return-void
.end method

.method public setHasAcceptedOnFirstRun(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "hasAcceptedOnFirstRun"    # Ljava/lang/Boolean;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->a(Ljava/lang/Boolean;)V

    .line 143
    return-void
.end method

.method public setLastTermsConfig(Lcom/chillingo/libterms/model/TermsConfig;)V
    .locals 1
    .param p1, "lastTermsConfig"    # Lcom/chillingo/libterms/model/TermsConfig;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->a(Lcom/chillingo/libterms/model/TermsConfig;)V

    .line 167
    return-void
.end method

.method public setPreviousTermsComplianceLevel(Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V
    .locals 1
    .param p1, "previousTermsComplianceLevel"    # Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->a(Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V

    .line 220
    return-void
.end method

.method public setReacceptIsPending(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "reacceptIsPending"    # Ljava/lang/Boolean;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->b(Ljava/lang/Boolean;)V

    .line 151
    return-void
.end method

.method public setResourcePackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "resourcePackageName"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->b(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public setTermAcceptanceRequired(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "termAcceptanceRequired"    # Ljava/lang/Boolean;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->c(Ljava/lang/Boolean;)V

    .line 196
    return-void
.end method

.method public setToDefaults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    new-instance v0, Lcom/chillingo/libterms/config/a;

    invoke-direct {v0}, Lcom/chillingo/libterms/config/a;-><init>()V

    iput-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    .line 113
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, v3}, Lcom/chillingo/libterms/config/a;->a(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/a;->a(Ljava/lang/Integer;)V

    .line 115
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/a;->a(Ljava/lang/Boolean;)V

    .line 116
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/a;->b(Ljava/lang/Boolean;)V

    .line 117
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/a;->b(Ljava/lang/Integer;)V

    .line 118
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, v3}, Lcom/chillingo/libterms/config/a;->a(Lcom/chillingo/libterms/model/TermsConfig;)V

    .line 119
    return-void
.end method

.method public setVersionUserAccepted(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentVersion"    # Ljava/lang/Integer;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->e:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->a(Ljava/lang/Integer;)V

    .line 135
    return-void
.end method
