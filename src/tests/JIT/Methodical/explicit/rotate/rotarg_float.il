// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.



.assembly extern mscorlib { }
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}
.assembly 'rotarg_float'// as "rotarg_float"
{

  //  .custom instance void ['mscorlib']System.Diagnostics.DebuggableAttribute::.ctor(bool,
  //                                                                                  bool) = ( 01 00 00 01 00 00 ) 
  
  
}
.assembly extern xunit.core {}
.module 'rotarg_float.exe'
// MVID: {7ECA5CD0-D623-475E-8C8F-8781756FD492}
.namespace Rotate
{
  .class private auto ansi App extends ['mscorlib']System.Object
  {
    .class auto ansi nested private App$Node extends ['mscorlib']System.Object
    {
      .field public float32 m_weight
      .field public class Rotate.App/App$Node m_leftChild
      .field public class Rotate.App/App$Node m_rightChild
      .method public hidebysig specialname rtspecialname 
              instance void .ctor() il managed
      {
        // Code size       39 (0x27)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  call       instance void ['mscorlib']System.Object::.ctor()
        IL_0006:  ldsfld     int32 Rotate.App::s_objCount
        IL_000b:  ldc.i4.1
        IL_000c:  add
        IL_000d:  stsfld     int32 Rotate.App::s_objCount
        IL_0012:  ldarg.0
        IL_0013:  ldsfld     int32 Rotate.App::s_weightCount
        IL_0018:  dup
        IL_0019:  ldc.i4.1
        IL_001a:  add
        IL_001b:  stsfld     int32 Rotate.App::s_weightCount
        IL_0020:  conv.r4
        IL_0021:  stfld      float32 Rotate.App/App$Node::m_weight
        IL_0026:  ret
      } // end of method 'App$Node::.ctor'

      .method family hidebysig virtual instance void
              Finalize() il managed
      {
        // Code size       13 (0xd)
        .maxstack  8
        IL_0000:  ldsfld     int32 Rotate.App::s_objCount
        IL_0005:  ldc.i4.1
        IL_0006:  sub
        IL_0007:  stsfld     int32 Rotate.App::s_objCount
        IL_000c:  ret
      } // end of method 'App$Node::Finalize'

      .method public hidebysig instance void 
              growTree(int32 maxHeight,
                       class System.String indent) il managed
      {
        // Code size       95 (0x5f)
        .maxstack  4
        .locals (class Rotate.App/App$Node V_0)
        IL_0000:  ldarg.1
        IL_0001:  ldc.i4.0
        IL_0002:  ble.s      IL_004e

        IL_0004:  ldarg.0
        IL_0005:  newobj     instance void Rotate.App/App$Node::.ctor()
        IL_000a:  stfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_000f:  ldarg.0
        IL_0010:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_0015:  ldarg.1
        IL_0016:  ldc.i4.1
        IL_0017:  sub
        IL_0018:  ldarg.2
        IL_0019:  ldstr      " "
        IL_001e:  call       class System.String ['mscorlib']System.String::Concat(class System.String,
                                                                                   class System.String)
        IL_0023:  call       instance void Rotate.App/App$Node::growTree(int32,
                                                                         class System.String)
        IL_0028:  ldarg.0
        IL_0029:  newobj     instance void Rotate.App/App$Node::.ctor()
        IL_002e:  stfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_0033:  ldarg.0
        IL_0034:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_0039:  ldarg.1
        IL_003a:  ldc.i4.1
        IL_003b:  sub
        IL_003c:  ldarg.2
        IL_003d:  ldstr      " "
        IL_0042:  call       class System.String ['mscorlib']System.String::Concat(class System.String,
                                                                                   class System.String)
        IL_0047:  call       instance void Rotate.App/App$Node::growTree(int32,
                                                                         class System.String)
        IL_004c:  br.s       IL_005e

        IL_004e:  ldarg.0
        IL_004f:  ldarg.0
        IL_0050:  ldnull
        IL_0051:  dup
        IL_0052:  stloc.0
        IL_0053:  stfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_0058:  ldloc.0
        IL_0059:  stfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_005e:  ret
      } // end of method 'App$Node::growTree'

      .method public hidebysig instance void 
              rotateTree(float32& leftWeight,
                         float32& rightWeight) il managed
      {
        // Code size       460 (0x1cc)
        .maxstack  3
        .locals (class Rotate.App/App$Node V_0,
                 class Rotate.App/App$Node V_1,
                 int32 V_2,
                 int32 V_3,
                 int32[] V_4,
                 float32 V_5,
                 float32 V_6)
        IL_0000:  ldnull
        IL_0001:  stloc.0
        IL_0002:  ldnull
        IL_0003:  stloc.1
        IL_0004:  ldsfld     int32 Rotate.App::s_objCount
        IL_0009:  stloc.2
        IL_000a:  ldarg.0
        IL_000b:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_0010:  brfalse.s  IL_004f

        IL_0012:  newobj     instance void Rotate.App/App$Node::.ctor()
        IL_0017:  stloc.1
        IL_0018:  ldloc.2
        IL_0019:  ldc.i4.1
        IL_001a:  add
        IL_001b:  stloc.2
        IL_001c:  ldloc.1
        IL_001d:  ldarg.0
        IL_001e:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_0023:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_0028:  stfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_002d:  ldloc.1
        IL_002e:  ldarg.0
        IL_002f:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_0034:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_0039:  stfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_003e:  ldloc.1
        IL_003f:  ldarg.0
        IL_0040:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_0045:  ldfld      float32 Rotate.App/App$Node::m_weight
        IL_004a:  stfld      float32 Rotate.App/App$Node::m_weight
        IL_004f:  ldarg.0
        IL_0050:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_0055:  brfalse.s  IL_0094

        IL_0057:  newobj     instance void Rotate.App/App$Node::.ctor()
        IL_005c:  stloc.0
        IL_005d:  ldloc.2
        IL_005e:  ldc.i4.1
        IL_005f:  add
        IL_0060:  stloc.2
        IL_0061:  ldloc.0
        IL_0062:  ldarg.0
        IL_0063:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_0068:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_006d:  stfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_0072:  ldloc.0
        IL_0073:  ldarg.0
        IL_0074:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_0079:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_007e:  stfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_0083:  ldloc.0
        IL_0084:  ldarg.0
        IL_0085:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_008a:  ldfld      float32 Rotate.App/App$Node::m_weight
        IL_008f:  stfld      float32 Rotate.App/App$Node::m_weight
        IL_0094:  ldarg.0
        IL_0095:  ldloc.0
        IL_0096:  stfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_009b:  ldarg.0
        IL_009c:  ldloc.1
        IL_009d:  stfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_00a2:  ldc.i4.0
        IL_00a3:  stloc.3
        IL_00a4:  br.s       IL_00b6

        IL_00a6:  ldc.i4     0x400
        IL_00ab:  newarr     ['mscorlib']System.Int32
        IL_00b0:  stloc.s    V_4
        IL_00b2:  ldloc.3
        IL_00b3:  ldc.i4.1
        IL_00b4:  add
        IL_00b5:  stloc.3
        IL_00b6:  ldloc.3
        IL_00b7:  ldc.i4     0x400
        IL_00bc:  blt.s      IL_00a6

        IL_00be:  call       void ['mscorlib']System.GC::Collect()
        IL_00c3:  ldarg.0
        IL_00c4:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_00c9:  brfalse.s  IL_0147

        IL_00cb:  ldarg.0
        IL_00cc:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_00d1:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_00d6:  brfalse.s  IL_0112

        IL_00d8:  ldarg.0
        IL_00d9:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_00de:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_00e3:  brfalse.s  IL_0112

        IL_00e5:  ldarg.0
        IL_00e6:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_00eb:  ldarg.0
        IL_00ec:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_00f1:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_00f6:  ldflda     float32 Rotate.App/App$Node::m_weight
        IL_00fb:  ldarg.0
        IL_00fc:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_0101:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_0106:  ldflda     float32 Rotate.App/App$Node::m_weight
        IL_010b:  call       instance void Rotate.App/App$Node::rotateTree(float32&,
                                                                           float32&)
        IL_0110:  br.s       IL_0128

        IL_0112:  ldc.r4     -1.
        IL_0117:  stloc.s    V_5
        IL_0119:  ldarg.0
        IL_011a:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_011f:  ldloca.s   V_5
        IL_0121:  ldloca.s   V_5
        IL_0123:  call       instance void Rotate.App/App$Node::rotateTree(float32&,
                                                                           float32&)
        IL_0128:  ldarg.1
        IL_0129:  ldind.r4
        IL_012a:  ldarg.0
        IL_012b:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_0130:  ldfld      float32 Rotate.App/App$Node::m_weight
        IL_0135:  beq.s      IL_0147

        IL_0137:  ldstr      "left weight do not match."
        IL_013c:  call       void [System.Console]System.Console::WriteLine(class System.String)
        IL_0141:  newobj     instance void ['mscorlib']System.Exception::.ctor()
        IL_0146:  throw

        IL_0147:  ldarg.0
        IL_0148:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_014d:  brfalse.s  IL_01cb

        IL_014f:  ldarg.0
        IL_0150:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_0155:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_015a:  brfalse.s  IL_0196

        IL_015c:  ldarg.0
        IL_015d:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_0162:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_0167:  brfalse.s  IL_0196

        IL_0169:  ldarg.0
        IL_016a:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_016f:  ldarg.0
        IL_0170:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_0175:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_017a:  ldflda     float32 Rotate.App/App$Node::m_weight
        IL_017f:  ldarg.0
        IL_0180:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_0185:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
        IL_018a:  ldflda     float32 Rotate.App/App$Node::m_weight
        IL_018f:  call       instance void Rotate.App/App$Node::rotateTree(float32&,
                                                                           float32&)
        IL_0194:  br.s       IL_01ac

        IL_0196:  ldc.r4     -1.
        IL_019b:  stloc.s    V_6
        IL_019d:  ldarg.0
        IL_019e:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_01a3:  ldloca.s   V_6
        IL_01a5:  ldloca.s   V_6
        IL_01a7:  call       instance void Rotate.App/App$Node::rotateTree(float32&,
                                                                           float32&)
        IL_01ac:  ldarg.2
        IL_01ad:  ldind.r4
        IL_01ae:  ldarg.0
        IL_01af:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
        IL_01b4:  ldfld      float32 Rotate.App/App$Node::m_weight
        IL_01b9:  beq.s      IL_01cb

        IL_01bb:  ldstr      "right weight do not match."
        IL_01c0:  call       void [System.Console]System.Console::WriteLine(class System.String)
        IL_01c5:  newobj     instance void ['mscorlib']System.Exception::.ctor()
        IL_01ca:  throw

        IL_01cb:  ret
      } // end of method 'App$Node::rotateTree'

    } // end of class 'App$Node'

    .field public static int32 s_weightCount
    .field public static int32 s_objCount
    .method private hidebysig static int32
            Main() il managed
    {
      .custom instance void [xunit.core]Xunit.FactAttribute::.ctor() = (
          01 00 00 00
      )
      .entrypoint
      // Code size       47 (0x2f)
      .maxstack  3
      .locals (class Rotate.App/App$Node V_0)
      IL_0000:  newobj     instance void Rotate.App/App$Node::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldc.i4.4
      IL_0008:  ldnull
      IL_000d:  call       instance void Rotate.App/App$Node::growTree(int32,
                                                                       class System.String)
      IL_0012:  ldloc.0
      IL_0013:  ldloc.0
      IL_0014:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_leftChild
      IL_0019:  ldflda     float32 Rotate.App/App$Node::m_weight
      IL_001e:  ldloc.0
      IL_001f:  ldfld      class Rotate.App/App$Node Rotate.App/App$Node::m_rightChild
      IL_0024:  ldflda     float32 Rotate.App/App$Node::m_weight
      IL_0029:  call       instance void Rotate.App/App$Node::rotateTree(float32&,
                                                                         float32&)
      IL_002e:  ldc.i4    0x64
      IL_0033:  ret
    } // end of method 'App::Main'

    .method public hidebysig specialname rtspecialname static 
            void .cctor() il managed
    {
      // Code size       13 (0xd)
      .maxstack  8
      IL_0000:  ldc.i4.1
      IL_0001:  stsfld     int32 Rotate.App::s_weightCount
      IL_0006:  ldc.i4.0
      IL_0007:  stsfld     int32 Rotate.App::s_objCount
      IL_000c:  ret
    } // end of method 'App::.cctor'

    .method public hidebysig specialname rtspecialname 
            instance void .ctor() il managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void ['mscorlib']System.Object::.ctor()
      IL_0006:  ret
    } // end of method 'App::.ctor'

  } // end of class 'App'

} // end of namespace 'Rotate'

//*********** DISASSEMBLY COMPLETE ***********************
