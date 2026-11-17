.class public final enum Lcom/fusepowered/as/model/vast/EventType;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/as/model/vast/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum ACCEPT_INVITATION:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum CLOSE:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum COLLAPSE:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum COMPLETE:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum CREATIVE_VIEW:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum EXIT_FULLSCREEN:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum EXPAND:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum FIRST_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum FULLSCREEN:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum MID_POINT:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum MUTE:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum PAUSE:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum PROGRESS:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum RESUME:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum REWIND:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum SKIP:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum START:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum THIRD_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

.field public static final enum UNMUTE:Lcom/fusepowered/as/model/vast/EventType;

.field private static eventTypeHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/as/model/vast/EventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "CREATIVE_VIEW"

    const-string v2, "creativeView"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->CREATIVE_VIEW:Lcom/fusepowered/as/model/vast/EventType;

    .line 11
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "START"

    const-string v2, "start"

    invoke-direct {v0, v1, v5, v2}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->START:Lcom/fusepowered/as/model/vast/EventType;

    .line 12
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "FIRST_QUARTILE"

    const-string v2, "firstQuartile"

    invoke-direct {v0, v1, v6, v2}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->FIRST_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    .line 13
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "MID_POINT"

    const-string v2, "midpoint"

    invoke-direct {v0, v1, v7, v2}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->MID_POINT:Lcom/fusepowered/as/model/vast/EventType;

    .line 14
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "THIRD_QUARTILE"

    const-string v2, "thirdQuartile"

    invoke-direct {v0, v1, v8, v2}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->THIRD_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    .line 15
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "COMPLETE"

    const/4 v2, 0x5

    const-string v3, "complete"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->COMPLETE:Lcom/fusepowered/as/model/vast/EventType;

    .line 16
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "MUTE"

    const/4 v2, 0x6

    const-string v3, "mute"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->MUTE:Lcom/fusepowered/as/model/vast/EventType;

    .line 17
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "UNMUTE"

    const/4 v2, 0x7

    const-string v3, "unmute"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->UNMUTE:Lcom/fusepowered/as/model/vast/EventType;

    .line 18
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "PAUSE"

    const/16 v2, 0x8

    const-string v3, "pause"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->PAUSE:Lcom/fusepowered/as/model/vast/EventType;

    .line 19
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "REWIND"

    const/16 v2, 0x9

    const-string v3, "rewind"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->REWIND:Lcom/fusepowered/as/model/vast/EventType;

    .line 20
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "RESUME"

    const/16 v2, 0xa

    const-string v3, "resume"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->RESUME:Lcom/fusepowered/as/model/vast/EventType;

    .line 21
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "FULLSCREEN"

    const/16 v2, 0xb

    const-string v3, "fullscreen"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->FULLSCREEN:Lcom/fusepowered/as/model/vast/EventType;

    .line 22
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "EXIT_FULLSCREEN"

    const/16 v2, 0xc

    const-string v3, "exitFullscreen"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->EXIT_FULLSCREEN:Lcom/fusepowered/as/model/vast/EventType;

    .line 23
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "EXPAND"

    const/16 v2, 0xd

    const-string v3, "expand"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->EXPAND:Lcom/fusepowered/as/model/vast/EventType;

    .line 24
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "COLLAPSE"

    const/16 v2, 0xe

    const-string v3, "collapse"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->COLLAPSE:Lcom/fusepowered/as/model/vast/EventType;

    .line 25
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "ACCEPT_INVITATION"

    const/16 v2, 0xf

    const-string v3, "acceptInvitation"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->ACCEPT_INVITATION:Lcom/fusepowered/as/model/vast/EventType;

    .line 26
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "CLOSE"

    const/16 v2, 0x10

    const-string v3, "close"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->CLOSE:Lcom/fusepowered/as/model/vast/EventType;

    .line 27
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "SKIP"

    const/16 v2, 0x11

    const-string v3, "skip"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->SKIP:Lcom/fusepowered/as/model/vast/EventType;

    .line 28
    new-instance v0, Lcom/fusepowered/as/model/vast/EventType;

    const-string v1, "PROGRESS"

    const/16 v2, 0x12

    const-string v3, "progress"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/model/vast/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->PROGRESS:Lcom/fusepowered/as/model/vast/EventType;

    .line 9
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/fusepowered/as/model/vast/EventType;

    sget-object v1, Lcom/fusepowered/as/model/vast/EventType;->CREATIVE_VIEW:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/as/model/vast/EventType;->START:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/as/model/vast/EventType;->FIRST_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/as/model/vast/EventType;->MID_POINT:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fusepowered/as/model/vast/EventType;->THIRD_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->COMPLETE:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->MUTE:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->UNMUTE:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->PAUSE:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->REWIND:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->RESUME:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->FULLSCREEN:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->EXIT_FULLSCREEN:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->EXPAND:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->COLLAPSE:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->ACCEPT_INVITATION:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->CLOSE:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->SKIP:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->PROGRESS:Lcom/fusepowered/as/model/vast/EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->$VALUES:[Lcom/fusepowered/as/model/vast/EventType;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fusepowered/as/model/vast/EventType;->eventTypeHashMap:Ljava/util/HashMap;

    .line 44
    const-class v0, Lcom/fusepowered/as/model/vast/EventType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/EventType;

    .line 45
    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->eventTypeHashMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/fusepowered/as/model/vast/EventType;->eventString:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/fusepowered/as/model/vast/EventType;->eventString:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/fusepowered/as/model/vast/EventType;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/fusepowered/as/model/vast/EventType;->eventTypeHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/EventType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/as/model/vast/EventType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/fusepowered/as/model/vast/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/EventType;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/as/model/vast/EventType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/fusepowered/as/model/vast/EventType;->$VALUES:[Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v0}, [Lcom/fusepowered/as/model/vast/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/as/model/vast/EventType;

    return-object v0
.end method


# virtual methods
.method public getEventString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/EventType;->eventString:Ljava/lang/String;

    return-object v0
.end method
