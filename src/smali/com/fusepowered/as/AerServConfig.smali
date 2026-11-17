.class public Lcom/fusepowered/as/AerServConfig;
.super Ljava/lang/Object;
.source "AerServConfig.java"


# static fields
.field private static baseUrl:Ljava/lang/String; = null

.field private static debug:Z = false

.field private static final headerName:Ljava/lang/String; = "X-AerServ"

.field private static final productionBaseUrl:Ljava/lang/String; = "http://ads.aerserv.com/as/?key=2"

.field private static final stagingBaseUrl:Ljava/lang/String; = "http://staging.ads.aerserv.com/as/?key=2"

.field private static verbose:Z


# instance fields
.field private context:Landroid/content/Context;

.field private eventListener:Lcom/fusepowered/as/AerServEventListener;

.field private keywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private plc:Ljava/lang/String;

.field private preload:Z

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lcom/fusepowered/as/AerServConfig;->debug:Z

    .line 16
    sput-boolean v0, Lcom/fusepowered/as/AerServConfig;->verbose:Z

    .line 20
    const-string v0, "http://ads.aerserv.com/as/?key=2"

    sput-object v0, Lcom/fusepowered/as/AerServConfig;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/as/AerServConfig;->preload:Z

    .line 22
    const v0, 0x7fffffff

    iput v0, p0, Lcom/fusepowered/as/AerServConfig;->timeout:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/AerServConfig;->keywords:Ljava/util/List;

    .line 25
    new-instance v0, Lcom/fusepowered/as/AerServConfig$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/AerServConfig$1;-><init>(Lcom/fusepowered/as/AerServConfig;)V

    iput-object v0, p0, Lcom/fusepowered/as/AerServConfig;->eventListener:Lcom/fusepowered/as/AerServEventListener;

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AerServConfig cannot be constructed with a null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[0-9]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AerServConfig cannot be constructed with bad PLC \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    iput-object p1, p0, Lcom/fusepowered/as/AerServConfig;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/fusepowered/as/AerServConfig;->plc:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/fusepowered/as/AerServConfig;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "X-AerServ"

    return-object v0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/fusepowered/as/AerServConfig;->debug:Z

    return v0
.end method

.method public static isVerbose()Z
    .locals 1

    .prologue
    .line 187
    sget-boolean v0, Lcom/fusepowered/as/AerServConfig;->verbose:Z

    return v0
.end method

.method public static setToProductionUrl()V
    .locals 1

    .prologue
    .line 110
    const-string v0, "http://ads.aerserv.com/as/?key=2"

    sput-object v0, Lcom/fusepowered/as/AerServConfig;->baseUrl:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public static setToStagingUrl()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "http://staging.ads.aerserv.com/as/?key=2"

    sput-object v0, Lcom/fusepowered/as/AerServConfig;->baseUrl:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fusepowered/as/AerServConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getEventListener()Lcom/fusepowered/as/AerServEventListener;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/fusepowered/as/AerServConfig;->eventListener:Lcom/fusepowered/as/AerServEventListener;

    return-object v0
.end method

.method public getKeywords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/as/AerServConfig;->keywords:Ljava/util/List;

    return-object v0
.end method

.method public getPlc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fusepowered/as/AerServConfig;->plc:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/fusepowered/as/AerServConfig;->timeout:I

    return v0
.end method

.method public isPreload()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/fusepowered/as/AerServConfig;->preload:Z

    return v0
.end method

.method public setBaseUrl(Ljava/lang/String;)Lcom/fusepowered/as/AerServConfig;
    .locals 0

    .prologue
    .line 95
    sput-object p1, Lcom/fusepowered/as/AerServConfig;->baseUrl:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public setDebug(Z)Lcom/fusepowered/as/AerServConfig;
    .locals 0

    .prologue
    .line 142
    sput-boolean p1, Lcom/fusepowered/as/AerServConfig;->debug:Z

    .line 143
    return-object p0
.end method

.method public setEventListener(Lcom/fusepowered/as/AerServEventListener;)Lcom/fusepowered/as/AerServConfig;
    .locals 2

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot call setEventListener with a null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/as/AerServConfig;->eventListener:Lcom/fusepowered/as/AerServEventListener;

    .line 167
    return-object p0
.end method

.method public setKeywords(Ljava/util/List;)Lcom/fusepowered/as/AerServConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/as/AerServConfig;"
        }
    .end annotation

    .prologue
    .line 120
    iput-object p1, p0, Lcom/fusepowered/as/AerServConfig;->keywords:Ljava/util/List;

    .line 121
    return-object p0
.end method

.method public setPreload(Z)Lcom/fusepowered/as/AerServConfig;
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/fusepowered/as/AerServConfig;->preload:Z

    .line 180
    return-object p0
.end method

.method public setProductionBaseUrl()Lcom/fusepowered/as/AerServConfig;
    .locals 1

    .prologue
    .line 75
    const-string v0, "http://ads.aerserv.com/as/?key=2"

    sput-object v0, Lcom/fusepowered/as/AerServConfig;->baseUrl:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public setStagingBaseUrl()Lcom/fusepowered/as/AerServConfig;
    .locals 1

    .prologue
    .line 84
    const-string v0, "http://staging.ads.aerserv.com/as/?key=2"

    sput-object v0, Lcom/fusepowered/as/AerServConfig;->baseUrl:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public setTimeout(I)Lcom/fusepowered/as/AerServConfig;
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/fusepowered/as/AerServConfig;->timeout:I

    .line 132
    return-object p0
.end method

.method public setVerbose(Z)Lcom/fusepowered/as/AerServConfig;
    .locals 0

    .prologue
    .line 153
    sput-boolean p1, Lcom/fusepowered/as/AerServConfig;->verbose:Z

    .line 154
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 32
    const-string v0, "Context: %s, PLC: %s, Debug: %b, Preload: %b, Timeout: %d, Keywords: %s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fusepowered/as/AerServConfig;->context:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fusepowered/as/AerServConfig;->plc:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-boolean v3, Lcom/fusepowered/as/AerServConfig;->debug:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/fusepowered/as/AerServConfig;->preload:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/fusepowered/as/AerServConfig;->timeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/fusepowered/as/AerServConfig;->keywords:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
