.class public Lcom/fusepowered/debug/FuseBridgeHandler;
.super Ljava/lang/Object;
.source "FuseBridgeHandler.java"

# interfaces
.implements Lcom/fusepowered/BridgeHandler;


# static fields
.field private static final NullJSON:Ljava/lang/String; = "{ \"Null\":\"\" }"

.field private static final classForPrimitive:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final classFromString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final internalCommands:Ljava/lang/String; = "? //List all commands\n?Ambiguous:RegisterCustomEventInt //Calls the registerCustomEvent(int, int) function\n?Ambiguous:RegisterCustomEventString //Calls the registerCustomEvent(int, String) function\n?GetWaterfall //Returns the state of the specified waterfall\n?HasSessionStarted //Returns whether the session has started successfully\n?StealCallbacks //Overwrites the callbacks with an internal class\n?ClearCallbacks //Clear the callback buffer\n?GetCallbacks //Return the callback log\n?ClearLogs //Clear the log buffer\n?GetLogs //Return the log buffer\n"

.field private static final responseCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arrayLock:Ljava/util/concurrent/Semaphore;

.field private callbackListener:Lcom/fusepowered/debug/FuseBridgeSDKListener;

.field private loggedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rand:Ljava/security/SecureRandom;

.field private returnValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 627
    new-instance v0, Lcom/fusepowered/debug/FuseBridgeHandler$2;

    invoke-direct {v0}, Lcom/fusepowered/debug/FuseBridgeHandler$2;-><init>()V

    sput-object v0, Lcom/fusepowered/debug/FuseBridgeHandler;->classForPrimitive:Ljava/util/Map;

    .line 639
    new-instance v0, Lcom/fusepowered/debug/FuseBridgeHandler$3;

    invoke-direct {v0}, Lcom/fusepowered/debug/FuseBridgeHandler$3;-><init>()V

    sput-object v0, Lcom/fusepowered/debug/FuseBridgeHandler;->classFromString:Ljava/util/Map;

    .line 668
    new-instance v0, Lcom/fusepowered/debug/FuseBridgeHandler$4;

    invoke-direct {v0}, Lcom/fusepowered/debug/FuseBridgeHandler$4;-><init>()V

    sput-object v0, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->arrayLock:Ljava/util/concurrent/Semaphore;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->returnValues:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->rand:Ljava/security/SecureRandom;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->loggedCallbacks:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/debug/FuseBridgeHandler;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/debug/FuseBridgeHandler;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/fusepowered/debug/FuseBridgeHandler;->resultFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/debug/FuseBridgeHandler;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/debug/FuseBridgeHandler;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->arrayLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/debug/FuseBridgeHandler;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/debug/FuseBridgeHandler;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->returnValues:Landroid/util/SparseArray;

    return-object v0
.end method

.method private constructObject(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 30
    .param p1, "stringType"    # Ljava/lang/String;
    .param p2, "objectValue"    # Ljava/lang/Object;
    .param p3, "outTypeAt0"    # [Ljava/lang/Class;
    .param p4, "outValueAt0"    # [Ljava/lang/Object;

    .prologue
    .line 178
    const/16 v25, 0x0

    :try_start_0
    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->classFromString:Ljava/util/Map;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->classFromString:Ljava/util/Map;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Class;

    :goto_0
    aput-object v24, p3, v25
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v24, v0

    if-nez v24, :cond_2

    .line 185
    const/16 v24, 0x0

    aget-object v24, p3, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->isEnum()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 187
    const/16 v24, 0x0

    const/16 v25, 0x0

    :try_start_1
    aget-object v25, p3, v25

    const-string v26, "valueOf"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-class v29, Ljava/lang/String;

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object p2, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    aput-object v25, p4, v24
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    :goto_1
    const/16 v24, 0x1

    .line 379
    :goto_2
    return v24

    .line 178
    :cond_0
    :try_start_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v24

    goto :goto_0

    .line 179
    :catch_0
    move-exception v9

    .line 180
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 181
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x251

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Could not create object with class: "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 182
    const/16 v24, 0x0

    goto :goto_2

    .line 188
    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v9

    .line 189
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x251

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Could not create Enum of type "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, " using value "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 191
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 194
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v24, 0x0

    aput-object p2, p4, v24

    goto/16 :goto_1

    :cond_2
    move-object/from16 v22, p2

    .line 199
    check-cast v22, Lorg/json/JSONObject;

    .line 200
    .local v22, "vals":Lorg/json/JSONObject;
    const-string v24, "genericTypes"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 201
    .local v10, "generics":Lorg/json/JSONArray;
    const-string v24, "constructorTypes"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 203
    .local v7, "conTypes":Lorg/json/JSONArray;
    if-nez v10, :cond_3

    if-nez v7, :cond_3

    .line 204
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x257

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "No genericTypes or constructorTypes specified"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 205
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 208
    :cond_3
    if-eqz v10, :cond_16

    .line 209
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    .line 210
    const-string v24, "values"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 211
    .local v23, "values":Lorg/json/JSONObject;
    const-string v24, "insertFunc"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, "insertFunc":Ljava/lang/String;
    if-eqz v23, :cond_4

    if-nez v12, :cond_5

    .line 213
    :cond_4
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x257

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "No values object inside parameter definition"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 214
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 218
    :cond_5
    const/16 v24, 0x0

    const/16 v25, 0x0

    :try_start_3
    aget-object v25, p3, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v25

    aput-object v25, p4, v24
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 226
    const/16 v24, 0x0

    const/16 v25, 0x0

    :try_start_4
    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 227
    .local v19, "s":Ljava/lang/String;
    if-nez v19, :cond_6

    .line 228
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x257

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Generic types array does not contain strings"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 229
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 219
    .end local v19    # "s":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 220
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x251

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Could not create object with class: "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 222
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 231
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v19    # "s":Ljava/lang/String;
    :cond_6
    :try_start_5
    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->classFromString:Ljava/util/Map;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->classFromString:Ljava/util/Map;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v15, v24

    .line 237
    .local v15, "keyGenType":Ljava/lang/Class;
    :goto_3
    const/4 v8, 0x0

    .line 239
    .local v8, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_6
    invoke-virtual {v15}, Ljava/lang/Class;->isPrimitive()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 240
    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->classForPrimitive:Ljava/util/Map;

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Class;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-class v27, Ljava/lang/String;

    aput-object v27, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v8

    .line 247
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 248
    .local v16, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 249
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 252
    .local v13, "k":Ljava/lang/String;
    if-eqz v8, :cond_a

    .line 253
    const/16 v24, 0x1

    :try_start_7
    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v13, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v14

    .line 265
    :goto_5
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    .line 266
    .local v21, "v":Ljava/lang/Object;
    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 267
    .local v20, "t":Ljava/lang/String;
    if-eqz v14, :cond_8

    if-eqz v21, :cond_8

    if-nez v20, :cond_c

    .line 268
    :cond_8
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x257

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Map does not contain valid data"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 269
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 231
    .end local v8    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v13    # "k":Ljava/lang/String;
    .end local v15    # "keyGenType":Ljava/lang/Class;
    .end local v16    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "t":Ljava/lang/String;
    .end local v21    # "v":Ljava/lang/Object;
    :cond_9
    :try_start_8
    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    move-result-object v15

    goto/16 :goto_3

    .line 232
    .end local v19    # "s":Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 233
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x251

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Could not create object with class: "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 234
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 242
    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v8    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v15    # "keyGenType":Ljava/lang/Class;
    .restart local v19    # "s":Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 243
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x251

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Could not create any map keys of type "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 245
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 254
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v13    # "k":Ljava/lang/String;
    .restart local v16    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    :try_start_9
    const-class v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 255
    move-object v14, v13

    .local v14, "key":Ljava/lang/String;
    goto/16 :goto_5

    .line 257
    .end local v14    # "key":Ljava/lang/String;
    :cond_b
    const/16 v24, 0x0

    throw v24
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 259
    :catch_5
    move-exception v9

    .line 260
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x251

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Could not convert "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, " into type "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 262
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 272
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v20    # "t":Ljava/lang/String;
    .restart local v21    # "v":Ljava/lang/Object;
    :cond_c
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    .line 273
    .local v17, "outClass":[Ljava/lang/Class;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 274
    .local v18, "outValue":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fusepowered/debug/FuseBridgeHandler;->constructObject(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 275
    const/16 v24, 0x0

    const/16 v25, 0x0

    aget-object v25, v18, v25

    aput-object v25, p4, v24

    .line 276
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 280
    :cond_d
    const/16 v24, 0x0

    :try_start_a
    aget-object v24, p3, v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-class v27, Ljava/lang/Object;

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const-class v27, Ljava/lang/Object;

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, p4, v25

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v14, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v18, v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_4

    .line 281
    :catch_6
    move-exception v9

    .line 282
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x251

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Could not call insert function "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, " using value "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 284
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 287
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "k":Ljava/lang/String;
    .end local v17    # "outClass":[Ljava/lang/Class;
    .end local v18    # "outValue":[Ljava/lang/Object;
    .end local v20    # "t":Ljava/lang/String;
    .end local v21    # "v":Ljava/lang/Object;
    :cond_e
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 290
    .end local v8    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v12    # "insertFunc":Ljava/lang/String;
    .end local v15    # "keyGenType":Ljava/lang/Class;
    .end local v16    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v19    # "s":Ljava/lang/String;
    .end local v23    # "values":Lorg/json/JSONObject;
    :cond_f
    const-string v24, "values"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 291
    .local v23, "values":Lorg/json/JSONArray;
    const-string v24, "insertFunc"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 292
    .restart local v12    # "insertFunc":Ljava/lang/String;
    if-eqz v23, :cond_10

    if-nez v12, :cond_11

    .line 293
    :cond_10
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x257

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "No values array inside parameter definition"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 294
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 298
    :cond_11
    const/16 v24, 0x0

    const/16 v25, 0x0

    :try_start_b
    aget-object v25, p3, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v25

    aput-object v25, p4, v24
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 305
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_15

    .line 307
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v21

    .line 308
    .restart local v21    # "v":Ljava/lang/Object;
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 309
    .restart local v20    # "t":Ljava/lang/String;
    if-eqz v21, :cond_12

    if-nez v20, :cond_13

    .line 310
    :cond_12
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x257

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Map does not contain valid data"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 311
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 299
    .end local v11    # "i":I
    .end local v20    # "t":Ljava/lang/String;
    .end local v21    # "v":Ljava/lang/Object;
    :catch_7
    move-exception v9

    .line 300
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x251

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Could not create object with class: "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 302
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 314
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "i":I
    .restart local v20    # "t":Ljava/lang/String;
    .restart local v21    # "v":Ljava/lang/Object;
    :cond_13
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    .line 315
    .restart local v17    # "outClass":[Ljava/lang/Class;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 316
    .restart local v18    # "outValue":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fusepowered/debug/FuseBridgeHandler;->constructObject(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_14

    .line 317
    const/16 v24, 0x0

    const/16 v25, 0x0

    aget-object v25, v18, v25

    aput-object v25, p4, v24

    .line 318
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 322
    :cond_14
    const/16 v24, 0x0

    :try_start_c
    aget-object v24, p3, v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-class v27, Ljava/lang/Object;

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, p4, v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v18, v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 305
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 323
    :catch_8
    move-exception v9

    .line 324
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x251

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Could not call insert function "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, " using value "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 326
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 329
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v17    # "outClass":[Ljava/lang/Class;
    .end local v18    # "outValue":[Ljava/lang/Object;
    .end local v20    # "t":Ljava/lang/String;
    .end local v21    # "v":Ljava/lang/Object;
    :cond_15
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 332
    .end local v11    # "i":I
    .end local v12    # "insertFunc":Ljava/lang/String;
    .end local v23    # "values":Lorg/json/JSONArray;
    :cond_16
    const-string v24, "values"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 333
    .restart local v23    # "values":Lorg/json/JSONArray;
    if-nez v23, :cond_17

    .line 334
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x257

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "No values array inside parameter definition"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 335
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 338
    :cond_17
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    new-array v5, v0, [Ljava/lang/Class;

    .line 339
    .local v5, "conParamTypes":[Ljava/lang/Class;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    new-array v6, v0, [Ljava/lang/Object;

    .line 341
    .local v6, "conParamValues":[Ljava/lang/Object;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_1b

    .line 343
    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v7, v11, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 344
    .restart local v20    # "t":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v21

    .line 345
    .restart local v21    # "v":Ljava/lang/Object;
    if-eqz v20, :cond_18

    if-nez v21, :cond_19

    .line 346
    :cond_18
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x257

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Constructor parameters do not contain valid data"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 347
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 350
    :cond_19
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    .line 351
    .restart local v17    # "outClass":[Ljava/lang/Class;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 352
    .restart local v18    # "outValue":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fusepowered/debug/FuseBridgeHandler;->constructObject(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1a

    .line 353
    const/16 v24, 0x0

    const/16 v25, 0x0

    aget-object v25, v18, v25

    aput-object v25, p4, v24

    .line 354
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 357
    :cond_1a
    const/16 v24, 0x0

    aget-object v24, v17, v24

    aput-object v24, v5, v11

    .line 358
    const/16 v24, 0x0

    aget-object v24, v18, v24

    aput-object v24, v6, v11

    .line 341
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 362
    .end local v17    # "outClass":[Ljava/lang/Class;
    .end local v18    # "outValue":[Ljava/lang/Object;
    .end local v20    # "t":Ljava/lang/String;
    .end local v21    # "v":Ljava/lang/Object;
    :cond_1b
    const/16 v24, 0x0

    const/16 v25, 0x0

    :try_start_d
    aget-object v25, p3, v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    aput-object v25, p4, v24
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 363
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 364
    :catch_9
    move-exception v9

    .line 365
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 366
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x256

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Failed constructing class "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v26, 0x0

    aget-object v26, p3, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 367
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 368
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v9

    .line 369
    .local v9, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 370
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x255

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Failed constructing class "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v26, 0x0

    aget-object v26, p3, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 371
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 372
    .end local v9    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_b
    move-exception v9

    .line 373
    .local v9, "e":Ljava/lang/ExceptionInInitializerError;
    invoke-virtual {v9}, Ljava/lang/ExceptionInInitializerError;->printStackTrace()V

    .line 374
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x255

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Failed constructing class "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v26, 0x0

    aget-object v26, p3, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Ljava/lang/ExceptionInInitializerError;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 375
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 376
    .end local v9    # "e":Ljava/lang/ExceptionInInitializerError;
    :catch_c
    move-exception v9

    .line 377
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v27, 0x254

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "Failed constructing class "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v26, 0x0

    aget-object v26, p3, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, p4, v25

    .line 379
    const/16 v24, 0x0

    goto/16 :goto_2
.end method

.method private varargs execute(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 477
    new-instance v5, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 478
    .local v5, "lock":Ljava/util/concurrent/Semaphore;
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    .line 481
    .local v4, "key":I
    :try_start_0
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 482
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/fusepowered/debug/FuseBridgeHandler$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/debug/FuseBridgeHandler$1;-><init>(Lcom/fusepowered/debug/FuseBridgeHandler;Ljava/lang/reflect/Method;[Ljava/lang/Object;ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 508
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->arrayLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 509
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->returnValues:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 510
    .local v7, "response":Ljava/lang/String;
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->returnValues:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 511
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->arrayLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 512
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 514
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 515
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v2, 0x24f

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "No response received from main thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 521
    .end local v7    # "response":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v7

    .line 519
    :catch_0
    move-exception v6

    .line 520
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v2, 0x1f8

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private htmlLogs(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "logs"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 568
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, v0, v3

    .line 569
    .local v4, "l":Ljava/lang/String;
    const-string v7, "<p "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string v7, ","

    const/4 v8, 0x3

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 572
    .local v6, "parts":[Ljava/lang/String;
    aget-object v7, v6, v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 587
    const-string v7, "><i>"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :goto_1
    const-string v7, "<kbd>"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</kbd>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v1, ""

    .line 591
    .local v1, "decoded":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/4 v7, 0x4

    if-ge v2, v7, :cond_0

    aget-object v7, v6, v10

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 592
    aget-object v7, v6, v10

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 574
    .end local v1    # "decoded":Ljava/lang/String;
    .end local v2    # "i":I
    :sswitch_0
    const-string v7, "style=\"color:red\"><b>"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 577
    :sswitch_1
    const-string v7, "style=\"color:blue\"><b>"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 580
    :sswitch_2
    const-string v7, "><b>"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 584
    :sswitch_3
    const-string v7, ">"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 594
    .restart local v1    # "decoded":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_0
    aget-object v7, v6, v10

    invoke-static {v7}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    aget-object v7, v6, v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_1

    .line 607
    :goto_3
    const-string v7, "</i></p>"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 598
    :sswitch_4
    const-string v7, "</b></p>"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :sswitch_5
    const-string v7, "</b></p>"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :sswitch_6
    const-string v7, "</b></p>"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    :sswitch_7
    const-string v7, "</p>"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 610
    .end local v1    # "decoded":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "l":Ljava/lang/String;
    .end local v6    # "parts":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 572
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_3
        0x65 -> :sswitch_0
        0x69 -> :sswitch_2
        0x76 -> :sswitch_3
        0x77 -> :sswitch_1
    .end sparse-switch

    .line 596
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_7
        0x65 -> :sswitch_4
        0x69 -> :sswitch_6
        0x76 -> :sswitch_7
        0x77 -> :sswitch_5
    .end sparse-switch
.end method

.method private overwriteCallbacks()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->callbackListener:Lcom/fusepowered/debug/FuseBridgeSDKListener;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Lcom/fusepowered/debug/FuseBridgeSDKListener;

    invoke-direct {v0, p0}, Lcom/fusepowered/debug/FuseBridgeSDKListener;-><init>(Lcom/fusepowered/debug/FuseBridgeHandler;)V

    iput-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->callbackListener:Lcom/fusepowered/debug/FuseBridgeSDKListener;

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->callbackListener:Lcom/fusepowered/debug/FuseBridgeSDKListener;

    invoke-static {v0}, Lcom/fusepowered/FuseSDK;->setListener(Lcom/fusepowered/FuseSDKListener;)V

    .line 565
    return-void
.end method

.method private varargs processInternalCommand(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 21
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "param"    # [Ljava/lang/Object;

    .prologue
    .line 395
    const-string v16, "{ \"Null\":\"\" }"

    .line 397
    .local v16, "retVal":Ljava/lang/String;
    const-string v18, "?Ambiguous:RegisterCustomEventInt"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 398
    const/16 v18, 0x0

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    aget-object v19, p2, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/fusepowered/FuseSDK;->registerCustomEvent(II)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 470
    :cond_0
    :goto_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v20, 0xc8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_1
    return-object v18

    .line 400
    :cond_1
    const-string v18, "?Ambiguous:RegisterCustomEventString"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 401
    const/16 v18, 0x0

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    aget-object v19, p2, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/fusepowered/FuseSDK;->registerCustomEvent(ILjava/lang/String;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 403
    :cond_2
    const-string v18, "?GetWaterfall"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 404
    const/16 v18, 0x0

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/fusepowered/fuseapi/FuseAPI;->_getProvidersInWaterfall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 406
    :cond_3
    const-string v18, "?HasSessionStarted"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 407
    sget-boolean v18, Lcom/fusepowered/fuseapi/FuseAPI;->_ss:Z

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 409
    :cond_4
    const-string v18, "?StealCallbacks"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/debug/FuseBridgeHandler;->overwriteCallbacks()V

    goto/16 :goto_0

    .line 412
    :cond_5
    const-string v18, "?ClearCallbacks"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/debug/FuseBridgeHandler;->loggedCallbacks:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 415
    :cond_6
    const-string v18, "?GetCallbacks"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 416
    const-string v5, " , "

    .line 417
    .local v5, "delim":Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_7

    const/16 v18, 0x0

    aget-object v18, p2, v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 418
    const/16 v18, 0x0

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 420
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/debug/FuseBridgeHandler;->loggedCallbacks:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/fusepowered/util/StringUtil;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 421
    const-string v18, " , "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 422
    const-string v18, "{ \"Callbacks\":[ %s ] }"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v16, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 425
    .end local v5    # "delim":Ljava/lang/String;
    :cond_8
    const-string v18, "?ClearLogs"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 426
    invoke-static {}, Lcom/fusepowered/log/FuseLog;->clearBuffer()V

    goto/16 :goto_0

    .line 428
    :cond_9
    const-string v18, "?GetLogs"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 429
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v17, "sb":Ljava/lang/StringBuilder;
    const-string v5, " , "

    .line 431
    .restart local v5    # "delim":Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_a

    const/16 v18, 0x0

    aget-object v18, p2, v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 432
    const/16 v18, 0x0

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 434
    :cond_a
    const-string v18, " , "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 435
    const-string v18, "{ \"Logs\":[ "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-static {}, Lcom/fusepowered/log/FuseLog;->getLogHistory()[Ljava/lang/String;

    move-result-object v11

    .line 437
    .local v11, "logs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_c

    .line 438
    aget-object v18, v11, v6

    invoke-static/range {v18 .. v18}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    array-length v0, v11

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v6, v0, :cond_b

    .line 440
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 443
    :cond_c
    const-string v18, " ] }"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 444
    goto/16 :goto_0

    .line 445
    .end local v6    # "i":I
    .end local v11    # "logs":[Ljava/lang/String;
    :cond_d
    invoke-static {}, Lcom/fusepowered/log/FuseLog;->getLogHistory()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/debug/FuseBridgeHandler;->htmlLogs(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 448
    .end local v5    # "delim":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_e
    const-string v18, "?"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 449
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    const-class v18, Lcom/fusepowered/FuseSDK;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    .line 451
    .local v13, "methods":[Ljava/lang/reflect/Method;
    move-object v3, v13

    .local v3, "arr$":[Ljava/lang/reflect/Method;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v3    # "arr$":[Ljava/lang/reflect/Method;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .local v8, "i$":I
    :goto_3
    if-ge v8, v9, :cond_11

    aget-object v12, v3, v8

    .line 452
    .local v12, "m":Ljava/lang/reflect/Method;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v14, "pStr":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/Class;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_4
    if-ge v7, v10, :cond_f

    aget-object v15, v4, v7

    .line 454
    .local v15, "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 456
    .end local v15    # "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 457
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x2

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 459
    :cond_10
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_3

    .line 464
    .end local v4    # "arr$":[Ljava/lang/Class;
    .end local v10    # "len$":I
    .end local v12    # "m":Ljava/lang/reflect/Method;
    .end local v14    # "pStr":Ljava/lang/StringBuilder;
    :cond_11
    const-string v18, "? //List all commands\n?Ambiguous:RegisterCustomEventInt //Calls the registerCustomEvent(int, int) function\n?Ambiguous:RegisterCustomEventString //Calls the registerCustomEvent(int, String) function\n?GetWaterfall //Returns the state of the specified waterfall\n?HasSessionStarted //Returns whether the session has started successfully\n?StealCallbacks //Overwrites the callbacks with an internal class\n?ClearCallbacks //Clear the callback buffer\n?GetCallbacks //Return the callback log\n?ClearLogs //Clear the log buffer\n?GetLogs //Return the log buffer\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 467
    goto/16 :goto_0

    .line 468
    .end local v8    # "i$":I
    .end local v13    # "methods":[Ljava/lang/reflect/Method;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_12
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v20, 0x250

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Internal command not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1
.end method

.method private resultFromJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "responseJSON"    # Ljava/lang/String;

    .prologue
    .line 553
    const-string v0, "{ \"result\" : %s }"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resultFromObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 557
    const-string v0, "{ \"result\" : %s }"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/fusepowered/debug/FuseBridgeHandler;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stringify(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 526
    if-nez p1, :cond_0

    .line 527
    const-string v2, "{ \"Null\":\"\" }"

    .line 549
    :goto_0
    return-object v2

    .line 530
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "objStr":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 541
    :goto_1
    const-string v3, "{ \"%s\":%s}"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "ret":Ljava/lang/String;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "{ \"%s\":%s}"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 533
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "ret":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 534
    .restart local v0    # "e":Lorg/json/JSONException;
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 535
    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 537
    :cond_1
    invoke-static {p1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public genericCallData(Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .local v9, "jData":Lorg/json/JSONObject;
    const-string v20, "commandID"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 105
    .local v4, "commandID":I
    const-string v20, "commandName"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "commandName":Ljava/lang/String;
    const-string v20, "parameters"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 107
    .local v16, "parameters":Lorg/json/JSONArray;
    if-gez v4, :cond_0

    if-nez v5, :cond_0

    .line 108
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v22, 0x257

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "No commandID or commandName specified"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 171
    .end local v4    # "commandID":I
    .end local v5    # "commandName":Ljava/lang/String;
    .end local v9    # "jData":Lorg/json/JSONObject;
    .end local v16    # "parameters":Lorg/json/JSONArray;
    :goto_0
    return-object v20

    .line 99
    :catch_0
    move-exception v6

    .line 100
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 101
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v22, 0x257

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_0

    .line 109
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v4    # "commandID":I
    .restart local v5    # "commandName":Ljava/lang/String;
    .restart local v9    # "jData":Lorg/json/JSONObject;
    .restart local v16    # "parameters":Lorg/json/JSONArray;
    :cond_0
    if-nez v16, :cond_1

    .line 110
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v22, 0x257

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "No parameters specified"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/Class;

    .line 114
    .local v14, "paramTypes":[Ljava/lang/Class;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/Object;

    .line 116
    .local v15, "paramValues":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_6

    .line 117
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 118
    .local v11, "o":Lorg/json/JSONObject;
    if-nez v11, :cond_2

    .line 119
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v22, 0x257

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Parameters array does not contain JSONObjects"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 121
    :cond_2
    const-string v20, "type"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 122
    .local v18, "t":Ljava/lang/String;
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 123
    .local v19, "v":Ljava/lang/Object;
    if-eqz v18, :cond_3

    if-nez v19, :cond_4

    .line 124
    :cond_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v22, 0x257

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Parameter JSONObject does not contain type and value"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 126
    :cond_4
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v12, v0, [Ljava/lang/Class;

    .line 127
    .local v12, "outClass":[Ljava/lang/Class;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v13, v0, [Ljava/lang/Object;

    .line 128
    .local v13, "outValue":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/fusepowered/debug/FuseBridgeHandler;->constructObject(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 129
    const/16 v20, 0x0

    aget-object v20, v13, v20

    check-cast v20, Ljava/lang/String;

    goto/16 :goto_0

    .line 132
    :cond_5
    const/16 v20, 0x0

    aget-object v20, v12, v20

    aput-object v20, v14, v7

    .line 133
    const/16 v20, 0x0

    aget-object v20, v13, v20

    aput-object v20, v15, v7

    .line 116
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 136
    .end local v11    # "o":Lorg/json/JSONObject;
    .end local v12    # "outClass":[Ljava/lang/Class;
    .end local v13    # "outValue":[Ljava/lang/Object;
    .end local v18    # "t":Ljava/lang/String;
    .end local v19    # "v":Ljava/lang/Object;
    :cond_6
    if-eqz v5, :cond_7

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3f

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 137
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/fusepowered/debug/FuseBridgeHandler;->processInternalCommand(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 141
    :cond_7
    if-ltz v4, :cond_8

    :try_start_1
    array-length v0, v14

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 142
    const-class v20, Lcom/fusepowered/FuseSDK;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v20

    aget-object v20, v20, v4

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/debug/FuseBridgeHandler;->execute(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 143
    :cond_8
    if-ltz v4, :cond_9

    .line 144
    const-class v20, Lcom/fusepowered/FuseSDK;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v20

    aget-object v20, v20, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/fusepowered/debug/FuseBridgeHandler;->execute(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 145
    :cond_9
    array-length v0, v14

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 146
    const-class v20, Lcom/fusepowered/FuseSDK;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/debug/FuseBridgeHandler;->execute(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 148
    :cond_a
    const-class v20, Lcom/fusepowered/FuseSDK;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/fusepowered/debug/FuseBridgeHandler;->execute(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v20

    goto/16 :goto_0

    .line 150
    :catch_1
    move-exception v6

    .line 151
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v22, 0x251

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Method to call does not exist: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 152
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v6

    .line 154
    .local v6, "e":Ljava/lang/Exception;
    if-nez v5, :cond_b

    .line 155
    const-class v20, Lcom/fusepowered/FuseSDK;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v20

    aget-object v20, v20, v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 157
    :cond_b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v17, "sb":Ljava/lang/StringBuilder;
    sget-object v20, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v21, 0x251

    invoke-virtual/range {v20 .. v21}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Method to call does not exist: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "( "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    move-object v3, v14

    .local v3, "arr$":[Ljava/lang/Class;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v10, :cond_c

    aget-object v18, v3, v8

    .line 162
    .local v18, "t":Ljava/lang/Class;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 164
    .end local v18    # "t":Ljava/lang/Class;
    :cond_c
    const-string v20, ")\nAttempting to call method with parameters: ( "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    move-object v3, v15

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v10, v3

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v10, :cond_d

    aget-object v18, v3, v8

    .line 166
    .local v18, "t":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 168
    .end local v18    # "t":Ljava/lang/Object;
    :cond_d
    const-string v20, ")"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0
.end method

.method public genericCallParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 44
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3f

    if-ne v13, v14, :cond_0

    .line 45
    const-string v13, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/fusepowered/debug/FuseBridgeHandler;->processInternalCommand(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 90
    :goto_0
    return-object v13

    .line 49
    :cond_0
    const-class v13, Lcom/fusepowered/FuseSDK;

    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 50
    .local v9, "methods":[Ljava/lang/reflect/Method;
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/reflect/Method;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_7

    aget-object v8, v2, v6

    .line 51
    .local v8, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 53
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 54
    .local v12, "prms":[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 56
    .local v10, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v13, v10

    if-lez v13, :cond_5

    array-length v13, v10

    array-length v14, v12

    if-ne v13, v14, :cond_5

    .line 58
    array-length v13, v10

    new-array v11, v13, [Ljava/lang/Object;

    .line 60
    .local v11, "parameters":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    :try_start_0
    array-length v13, v10

    if-ge v5, v13, :cond_4

    .line 61
    aget-object v13, v10, v5

    invoke-virtual {v13}, Ljava/lang/Class;->isPrimitive()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 62
    sget-object v13, Lcom/fusepowered/debug/FuseBridgeHandler;->classForPrimitive:Ljava/util/Map;

    aget-object v14, v10, v5

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 63
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_1

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v3, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v16, v12, v5

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :goto_3
    aput-object v13, v11, v5

    .line 60
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 63
    .restart local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v13, 0x0

    goto :goto_3

    .line 64
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    aget-object v13, v10, v5

    const-class v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 65
    aget-object v13, v12, v5

    aput-object v13, v11, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_4

    .line 70
    :catch_0
    move-exception v4

    .line 71
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 72
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v15, 0x256

    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 67
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    const/4 v13, 0x0

    :try_start_1
    aput-object v13, v11, v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 73
    :catch_1
    move-exception v4

    .line 74
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 75
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v15, 0x255

    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 76
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v4

    .line 77
    .local v4, "e":Ljava/lang/ExceptionInInitializerError;
    invoke-virtual {v4}, Ljava/lang/ExceptionInInitializerError;->printStackTrace()V

    .line 78
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v15, 0x255

    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/ExceptionInInitializerError;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 79
    .end local v4    # "e":Ljava/lang/ExceptionInInitializerError;
    :catch_3
    move-exception v4

    .line 80
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v15, 0x254

    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 84
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/fusepowered/debug/FuseBridgeHandler;->execute(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 86
    .end local v5    # "i":I
    .end local v11    # "parameters":[Ljava/lang/Object;
    :cond_5
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/fusepowered/debug/FuseBridgeHandler;->execute(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 50
    .end local v10    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v12    # "prms":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 90
    .end local v8    # "m":Ljava/lang/reflect/Method;
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/fusepowered/debug/FuseBridgeHandler;->responseCodes:Landroid/util/SparseArray;

    const/16 v15, 0x250

    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0
.end method

.method public logCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/fusepowered/debug/FuseBridgeHandler;->loggedCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    return-void
.end method

.method public setEnv(Ljava/lang/String;)V
    .locals 0
    .param p1, "env"    # Ljava/lang/String;

    .prologue
    .line 387
    return-void
.end method
