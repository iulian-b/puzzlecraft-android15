.class public Lcom/fusepowered/ac/ADCStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/fusepowered/ac/d;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/io/File;

.field f:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/d;)V
    .locals 0
    .param p1, "controller"    # Lcom/fusepowered/ac/d;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/fusepowered/ac/ADCStorage;->a:Lcom/fusepowered/ac/d;

    .line 30
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)D
    .locals 4

    .prologue
    .line 128
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 130
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 131
    mul-long/2addr v0, v2

    .line 132
    long-to-double v0, v0

    .line 136
    :goto_0
    return-wide v0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method a()V
    .locals 8

    .prologue
    .line 34
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Configuring storage"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCStorage;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCStorage;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/ADCStorage;->a(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCStorage;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/ADCStorage;->a(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    add-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCStorage;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/ADCStorage;->a(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x417e000000000000L    # 3.145728E7

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 50
    :cond_0
    if-eqz v0, :cond_2

    .line 52
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "Using internal storage:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCStorage;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/adc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->b:Ljava/lang/String;

    .line 60
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/ac/ADCStorage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->c:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCStorage;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 63
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCStorage;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->e:Ljava/io/File;

    .line 65
    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 68
    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    const-string v0, "Cannot create media folder."

    invoke-static {v0}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;)V

    .line 92
    :goto_1
    return-void

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCStorage;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.adc2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/fusepowered/ac/ab;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->b:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "Using external storage:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    goto :goto_0

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ADCStorage;->a(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4174000000000000L    # 2.097152E7

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not enough space to store temporary files ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/ADCStorage;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/ADCStorage;->a(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes available)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCStorage;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/adc/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->d:Ljava/lang/String;

    .line 85
    sget v0, Lcom/fusepowered/ac/a;->n:I

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/ac/ADCStorage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->d:Ljava/lang/String;

    .line 87
    :cond_5
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Internal data path: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/ADCStorage;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 89
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCStorage;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->f:Ljava/io/File;

    .line 90
    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_1
.end method

.method b()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->e:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->f:Ljava/io/File;

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 102
    iget-object v0, p0, Lcom/fusepowered/ac/ADCStorage;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/fusepowered/ac/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
