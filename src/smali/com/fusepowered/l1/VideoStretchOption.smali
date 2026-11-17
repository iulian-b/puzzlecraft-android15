.class public final enum Lcom/fusepowered/l1/VideoStretchOption;
.super Ljava/lang/Enum;
.source "VideoStretchOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/l1/VideoStretchOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/l1/VideoStretchOption;

.field public static final enum NONE:Lcom/fusepowered/l1/VideoStretchOption;

.field public static final enum NO_STRETCH:Lcom/fusepowered/l1/VideoStretchOption;

.field public static final enum STRECH:Lcom/fusepowered/l1/VideoStretchOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/fusepowered/l1/VideoStretchOption;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/l1/VideoStretchOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/l1/VideoStretchOption;->NONE:Lcom/fusepowered/l1/VideoStretchOption;

    .line 6
    new-instance v0, Lcom/fusepowered/l1/VideoStretchOption;

    const-string v1, "STRECH"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/l1/VideoStretchOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/l1/VideoStretchOption;->STRECH:Lcom/fusepowered/l1/VideoStretchOption;

    .line 7
    new-instance v0, Lcom/fusepowered/l1/VideoStretchOption;

    const-string v1, "NO_STRETCH"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/l1/VideoStretchOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/l1/VideoStretchOption;->NO_STRETCH:Lcom/fusepowered/l1/VideoStretchOption;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/l1/VideoStretchOption;

    sget-object v1, Lcom/fusepowered/l1/VideoStretchOption;->NONE:Lcom/fusepowered/l1/VideoStretchOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/l1/VideoStretchOption;->STRECH:Lcom/fusepowered/l1/VideoStretchOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/l1/VideoStretchOption;->NO_STRETCH:Lcom/fusepowered/l1/VideoStretchOption;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/l1/VideoStretchOption;->$VALUES:[Lcom/fusepowered/l1/VideoStretchOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/l1/VideoStretchOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/l1/VideoStretchOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/l1/VideoStretchOption;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/l1/VideoStretchOption;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/l1/VideoStretchOption;->$VALUES:[Lcom/fusepowered/l1/VideoStretchOption;

    invoke-virtual {v0}, [Lcom/fusepowered/l1/VideoStretchOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/l1/VideoStretchOption;

    return-object v0
.end method
