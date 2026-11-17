.class final enum Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;
.super Ljava/lang/Enum;
.source "MRAIDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "States"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

.field public static final enum DEFAULT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

.field public static final enum EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

.field public static final enum HIDDEN:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

.field public static final enum LOADING:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

.field public static final enum RESIZED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;


# instance fields
.field private final state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    const-string v1, "LOADING"

    const-string v2, "loading"

    invoke-direct {v0, v1, v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 158
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    const-string v1, "DEFAULT"

    const-string v2, "default"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->DEFAULT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 159
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    const-string v1, "EXPANDED"

    const-string v2, "expanded"

    invoke-direct {v0, v1, v5, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 160
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    const-string v1, "RESIZED"

    const-string v2, "resized"

    invoke-direct {v0, v1, v6, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 161
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    const-string v1, "HIDDEN"

    const-string v2, "hidden"

    invoke-direct {v0, v1, v7, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->HIDDEN:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 155
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->DEFAULT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->HIDDEN:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->$VALUES:[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 167
    iput-object p3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->state:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 155
    const-class v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->$VALUES:[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v0}, [Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->state:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->wrapInJSQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
