.class public final enum Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;
.super Ljava/lang/Enum;
.source "MraidEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

.field public static final enum ERROR:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

.field public static final enum READY:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

.field public static final enum SIZE_CHANGE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

.field public static final enum STATE_CHANGE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

.field public static final enum VIEWABLE_CHANGE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

.field private static lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 12
    new-instance v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    const-string v2, "ERROR"

    const-string v3, "error"

    invoke-direct {v1, v2, v0, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->ERROR:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    .line 13
    new-instance v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    const-string v2, "READY"

    const-string v3, "ready"

    invoke-direct {v1, v2, v4, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->READY:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    .line 14
    new-instance v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    const-string v2, "SIZE_CHANGE"

    const-string v3, "sizeChange"

    invoke-direct {v1, v2, v5, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->SIZE_CHANGE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    .line 15
    new-instance v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    const-string v2, "STATE_CHANGE"

    const-string v3, "stateChange"

    invoke-direct {v1, v2, v6, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->STATE_CHANGE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    .line 16
    new-instance v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    const-string v2, "VIEWABLE_CHANGE"

    const-string v3, "viewableChange"

    invoke-direct {v1, v2, v7, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->VIEWABLE_CHANGE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    .line 11
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->ERROR:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    aput-object v2, v1, v0

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->READY:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->SIZE_CHANGE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->STATE_CHANGE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->VIEWABLE_CHANGE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    aput-object v2, v1, v7

    sput-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->$VALUES:[Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->lookup:Ljava/util/Map;

    .line 25
    invoke-static {}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->values()[Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 26
    sget-object v4, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->$VALUES:[Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    invoke-virtual {v0}, [Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->name:Ljava/lang/String;

    return-object v0
.end method
